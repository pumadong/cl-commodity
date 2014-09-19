package com.cl.commodity.biz.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cl.commodity.biz.ICategoryService;
import com.cl.commodity.mapper.base.CategoryMapper;
import com.cl.commodity.model.base.Category;
import com.cl.commodity.utils.ConstantUtil;
import com.cl.privilege.model.User;


@Service
public class CategoryServiceImpl implements ICategoryService {

	@Autowired
	private CategoryMapper categoryMapper;
	
	private void setCategoryInsert(Category category,User operator)
	{
		Date d = new Date();
		category.setCreatePerson(operator.getUsername());
		category.setUpdatePerson(operator.getUsername());
		category.setCreateDate(d);
		category.setUpdateDate(d);
	}
	private void setCategoryUpdate(Category category,User operator)
	{
		Date d = new Date();
		category.setUpdatePerson(operator.getUsername());
		category.setUpdateDate(d);
	}
	private void setCategoryStruct(Category category)
	{
		//生成structure
		String structName = "";
		Byte level = 1;
		
		if(category.getParentId() == 0)
		{
			structName = category.getName();
			level = 1;
		} else {
			Category parentCategory = categoryMapper.selectByPrimaryKey(category.getParentId());
			structName = parentCategory.getStructName() + "-" + category.getName();
			level = (byte) (parentCategory.getLevel()+1);
		}

		category.setStructName(structName);
		category.setLevel(level);
	}
	
	
	@Override
	public List<Category> getCategoryList()
	{
		return categoryMapper.getCategoryList();
	}
	
	@Override
	public Category getCategoryById(Integer id) {
		return categoryMapper.selectByPrimaryKey(id);
	}

	@Override
	public Integer createCategory(Category category,User user) 
	{
		setCategoryStruct(category);
		setCategoryInsert(category,user);
		return categoryMapper.insertSelective(category);
	}

	@Override
	public Integer updateCategoryById(Category category,User user) {
		Category originalCategory = categoryMapper.selectByPrimaryKey(category.getId());
		if(!originalCategory.getStructName().equals(category.getStructName()))
		{
			category.setParentId(originalCategory.getParentId());
			setCategoryStruct(category);
		}
		setCategoryUpdate(category,user);
		return categoryMapper.updateByPrimaryKeySelective(category);
	}

	@Override
	public Boolean isUsed(Integer categoryId)
	{
		return categoryMapper.isUsed(categoryId);
	}
	
	@Override
	public String getCategoryTree()
	{
		List<Category> categoryList = categoryMapper.getCategoryList();
		if(categoryList==null || categoryList.size()==0) return ConstantUtil.EmptyJsonObject;
		
		Collections.sort(categoryList,new ComparatorCategory());
		
		Set<Integer> setParent = new HashSet<Integer>();
		for(Category d:categoryList)
		{
			setParent.add(d.getParentId());
		}
		
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		int i = 0;
		for(Category d:categoryList)
		{
			int level = d.getStructName().split("-").length;
			if(i!=0)
			{
				sb.append(",");
			}
			i++;
			sb.append("{")
				.append("\"id\":\"").append(d.getId()).append("\"")
				.append(",\"parent\":\"").append(d.getParentId()==0?"#":d.getParentId()).append("\"")
				.append(",\"text\":\"").append(d.getName()).append("\"")
				.append(",\"li_attr\":{\"sortNo\":").append(d.getSortNo()).append("}");;
			//前两个级别默认打开
			if(level < 3)
			{
				sb.append(",\"state\":{\"opened\":true}");
			}
			//最后一个级别换个绿色图标
			if(!setParent.contains(d.getId()))
			{
				sb.append(", \"icon\": \"fa fa-briefcase icon-success\"");
			}
			sb.append("}");
		}
		sb.append("]");
		return sb.toString();
	}
	
	@Override
	public List<Category> getCategoryListForOption()
	{
		List<Category> categorys = getCategoryList();
		if(categorys==null || categorys.size()==0)
		{
			return null;
		}
			
		List<Category> tempImmediateCategorys = new ArrayList<Category>();
		for(Category d:categorys)
		{
			if(d.getParentId()==0)
			{
				//一级子节点
				tempImmediateCategorys.add(d);
			}
		}
		
		return buildCategoryListForOption(categorys,tempImmediateCategorys,"s");
	}
	
	/**
	 * 这种写法和直接对所有分类列表进行循环的写法比较
	 * 优点是：更少的循环次数，所以也就是更少的CPU计算和更快的返回时间；缺点是：更多的内存占用
	 * 也可以看做是一种空间换时间
	 * @param descendantCategorys
	 * @param immediateCategorys
	 * @param structure
	 * @return
	 */
	private List<Category> buildCategoryListForOption(List<Category> descendantCategorys,List<Category> immediateCategorys,String structure)
	{
		if(descendantCategorys == null || descendantCategorys.size()==0
				||immediateCategorys == null || immediateCategorys.size()==0)
		{
			return null;
		}
		
		Collections.sort(immediateCategorys,new ComparatorCategory());
		
		List<Category> result = new ArrayList<Category>();

		Integer index = 0;
		Integer level = structure.split("-").length;
		String prefix = "";
		for(int i=0;i<level-1;i++)
		{
			prefix += "&nbsp;&nbsp;&nbsp;";
		}
		for(Category category:immediateCategorys)
		{
			if(category.getStructName().split("-").length != level+1 
					|| !category.getStructName().startsWith(structure+"-")
					)
			{
				continue;
			}
			category.setName(prefix + category.getName());
			result.add(category);

			List<Category> tempDescendantCategory = new ArrayList<Category>();
			List<Category> tempImmediateCategory = new ArrayList<Category>();
			for(Category r:descendantCategorys)
			{
				if(r.getStructName().startsWith(category.getStructName()+"-"))
				{
					if(r.getStructName().split("-").length == level + 2 )
					{
						//第一级子节点
						tempImmediateCategory.add(r);
					}
					//所有子节点
					tempDescendantCategory.add(r);
				}
			}
			if(tempDescendantCategory!=null && tempDescendantCategory.size()>0
					&& tempImmediateCategory!=null && tempImmediateCategory.size()>0)
			{
				List<Category> sub = buildCategoryListForOption(tempDescendantCategory,tempImmediateCategory, category.getStructName());
				
				if(sub!=null && sub.size()>0)
				{
					result.addAll(sub);
				}
			}			
			index++;
		}
		return result;
	}
	
	/**
	 * Category排序器，保证jsTree可以按照SortNo字段显示
	 */
	class ComparatorCategory implements Comparator<Category> {
		public int compare(Category r1, Category r2) {
			int l1 = r1.getStructName().length();
			int l2 = r2.getStructName().length();
			if(l1 == l2 )
			{
				return r1.getSortNo().compareTo(r2.getSortNo());
			}
			return l1>l2?1:-1;
		}
	}
}
