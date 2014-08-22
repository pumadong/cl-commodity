package com.cl.commodity.mapper.base;

import com.cl.commodity.model.base.CategoryBrandRef;

public interface CategoryBrandRefMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CategoryBrandRef record);

    int insertSelective(CategoryBrandRef record);

    CategoryBrandRef selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CategoryBrandRef record);

    int updateByPrimaryKey(CategoryBrandRef record);
}