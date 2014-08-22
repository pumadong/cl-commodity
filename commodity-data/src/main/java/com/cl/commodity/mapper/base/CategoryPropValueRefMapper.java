package com.cl.commodity.mapper.base;

import com.cl.commodity.model.base.CategoryPropValueRef;

public interface CategoryPropValueRefMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CategoryPropValueRef record);

    int insertSelective(CategoryPropValueRef record);

    CategoryPropValueRef selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CategoryPropValueRef record);

    int updateByPrimaryKey(CategoryPropValueRef record);
}