package com.cl.commodity.biz;

import java.util.List;

import com.cl.commodity.model.base.Category;
import com.cl.privilege.model.User;


/**
 * 分类表相关操作
 */
public interface ICategoryService {

	/**
	 * 查询所有Category对象
	 * @return
	 */
	List<Category> getCategoryList();
	
	/**
	 * 根据id获取Category对象
	 * @param id
	 * @return
	 */
	Category getCategoryById(Integer id);
	
	/**
	 * 新增记录
	 * @param category
	 * @param user
	 * @return
	 */
	Integer createCategory(Category category,User user);
	
	/**
	 * 根据id修改一条记录
	 * @param category
	 * @param user
	 * @return
	 */
	Integer updateCategoryById(Category category,User user);
	
	/**
	 * 分类是否被使用
	 * @param categoryId
	 */
	Boolean isUsed(Integer categoryId);
	
	/**
	 * 获取部门树
	 * @return
	 */
	String getCategoryTree();
	
	/**
	 * 获取Select控件中Options需要的List
	 * @return
	 */
	List<Category> getCategoryListForOption();
}
