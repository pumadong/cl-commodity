package com.cl.commodity.biz.impl;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cl.commodity.biz.IBrandService;
import com.cl.commodity.mapper.base.BrandMapper;
import com.cl.commodity.model.base.Brand;
import com.cl.commodity.model.base.BrandSearchModel;
import com.cl.commodity.utils.StringUtil;
import com.cl.privilege.model.User;


@Service
public class BrandServiceImpl implements IBrandService {
	
	@Autowired
	private BrandMapper brandMapper;
	
	private void setPersonInsert(Brand brand,User user)
	{
		Date d = new Date();
		brand.setCreatePerson(user.getUsername());
		brand.setUpdatePerson(user.getUsername());
		brand.setCreateDate(d);
		brand.setUpdateDate(d);
	}
	private void setPersonUpdate(Brand brand,User user)
	{
		Date d = new Date();
		brand.setUpdatePerson(user.getUsername());
		brand.setUpdateDate(d);
	}

	@Override
	public Brand getBrandById(Integer id) {
		return brandMapper.selectByPrimaryKey(id);
	}

	@Override
	public Integer createBrand(Brand brand,User user) {
		setPersonInsert(brand,user);
		return brandMapper.insertSelective(brand);
	}

	@Override
	public Integer updateBrandById(Brand brand,User user) {
		setPersonUpdate(brand,user);
		return brandMapper.updateByPrimaryKeySelective(brand);
	}
	
	@Override
	public Integer getBrandTotalBySearch(BrandSearchModel searchModel)
	{
		return brandMapper.getBrandTotalBySearch(searchModel);
	}

	@Override
	public List<Brand> getBrandListBySearch(BrandSearchModel searchModel)
	{
		return brandMapper.getBrandListBySearch(searchModel, 
				new RowBounds((searchModel.getPageNo() - 1) * searchModel.getPageSize(), searchModel.getPageSize()));
	}
	
	@Override
	public Boolean isUsed(Integer brandId)
	{
		return brandMapper.isUsed(brandId);
	}
	
	@Override
	public List<Brand> getBrandList()
	{
		return brandMapper.getBrandList();
	}
	
	@Override
	public String getBrandDataTables(BrandSearchModel searchModel)
	{
		Integer total = getBrandTotalBySearch(searchModel);
		List<Brand> brandList = getBrandListBySearch(searchModel);		
		if(brandList==null || brandList.size()==0)
		{
			return "{\"iTotalRecords\":0,\"iTotalDisplayRecords\":0,\"aaData\":[]}";
		}
		
		StringBuilder sb = new StringBuilder();
		sb.append(String.format("{\"iTotalRecords\":%d,\"iTotalDisplayRecords\":%d,\"aaData\":[",total,total));
		int i= 0;
		for(Brand r:brandList)
		{
			if(i != 0) sb.append(",");
			addDataRow(sb,r);
			i++;
		}
		sb.append("]}");
		return sb.toString();
	}
	
	@Override
	public String getBrandDataRow(Integer id)
	{
		Brand r = getBrandById(id);
		StringBuilder sb = new StringBuilder();
		addDataRow(sb,r);
		return sb.toString();
	}

	private void addDataRow(StringBuilder sb,Brand r)
	{
		sb.append("[");
		sb.append("\"<input type=\\\"checkbox\\\" name=\\\"id[]\\\" value=\\\"").append(r.getId()).append("\\\">\"");
		sb.append(",").append(r.getId());
		sb.append(",\"").append(r.getName()).append("\"");
		sb.append(",\"").append(r.getEnglishName()).append("\"");
		sb.append(",\"").append(r.getUpdatePerson()).append("\"");
		sb.append(",\"").append(StringUtil.formatDate(r.getUpdateDate(),"yyyy-MM-dd HH:mm:ss")).append("\"");
		sb.append(",\"")
		.append("<a href=\\\"javascript:Brand.update_click('").append(r.getId()).append("');\\\" class=\\\"btn btn-xs default btn-editable\\\"><i class=\\\"fa fa-edit\\\"></i> 修改</a>")
		.append("&nbsp;&nbsp;<a href=\\\"javascript:Brand.remove('").append(r.getId()).append("');\\\" class=\\\"btn btn-xs default btn-editable\\\"><i class=\\\"fa fa-times\\\"></i> 删除</a>")
		.append("\"");
		sb.append("]");
	}
}
