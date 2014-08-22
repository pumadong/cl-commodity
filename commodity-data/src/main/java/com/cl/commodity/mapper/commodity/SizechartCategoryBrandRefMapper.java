package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.SizechartCategoryBrandRef;

public interface SizechartCategoryBrandRefMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SizechartCategoryBrandRef record);

    int insertSelective(SizechartCategoryBrandRef record);

    SizechartCategoryBrandRef selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SizechartCategoryBrandRef record);

    int updateByPrimaryKey(SizechartCategoryBrandRef record);
}