package com.cl.commodity.mapper.base;

import com.cl.commodity.model.base.CategoryPropItemRef;

public interface CategoryPropItemRefMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CategoryPropItemRef record);

    int insertSelective(CategoryPropItemRef record);

    CategoryPropItemRef selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CategoryPropItemRef record);

    int updateByPrimaryKey(CategoryPropItemRef record);
}