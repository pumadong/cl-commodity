package com.cl.commodity.biz;

import java.util.List;


import com.cl.commodity.model.base.Brand;
import com.cl.commodity.model.base.BrandSearchModel;
import com.cl.privilege.model.User;

/**
 * 品牌表相关操作
 */
public interface IBrandService {
	/**
	 * 根据id获取Brand对象
	 * @param id
	 * @return
	 */
	Brand getBrandById(Integer id);
	
	/**
	 * 新增记录
	 * @param brand
	 * @param user
	 * @return
	 */
	Integer createBrand(Brand brand,User user);

	/**
	 * 根据id修改一条记录
	 * @param brand
	 * @return
	 */
	Integer updateBrandById(Brand brand,User user);
	
	/**
	 * 根据条件查询品牌列表总数
	 * @return
	 */
	Integer getBrandTotalBySearch(BrandSearchModel searchModel);
	
	/**
	 * 根据条件查询品牌列表
	 * @return
	 */
	List<Brand> getBrandListBySearch(BrandSearchModel searchModel);
	
	/**
	 * 品牌是否被用户使用
	 * @param brandId
	 * @return
	 */
	Boolean isUsed(Integer brandId);
	
	/**
	 * 所有品牌列表
	 * @return
	 */
	List<Brand> getBrandList();
	
	/**
	 * 根据查询条件，返回DataTables控件需要的Json数据格式
	 * @param searchModel
	 * @return
	 */
	String getBrandDataTables(BrandSearchModel searchModel);
	
	/**
	 * 返回DataTables控件需要的一行Json数据格式
	 * @param id
	 * @return
	 */
	String getBrandDataRow(Integer id);
	
}
