package com.cl.commodity.mapper.base;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.cl.commodity.model.base.Brand;
import com.cl.commodity.model.base.BrandSearchModel;

public interface BrandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);
    
    // 以上是为了节约开发时间，使用MyBatisGenerator生成的代码
    // 以下是针对不足功能，添加的代码
    
	/**
	 * 根据条件查询品牌列表总数
	 * @param searchModel
	 * @return
	 */
	Integer getBrandTotalBySearch(BrandSearchModel searchModel);
	
	/**
	 * 根据条件查询用户List
	 * @param searchModel
	 * @return
	 */
	List<Brand> getBrandListBySearch(BrandSearchModel searchModel,RowBounds rowBounds);
	
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
}