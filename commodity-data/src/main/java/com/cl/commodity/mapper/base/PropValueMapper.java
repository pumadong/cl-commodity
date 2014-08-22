package com.cl.commodity.mapper.base;

import com.cl.commodity.model.base.PropValue;

public interface PropValueMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PropValue record);

    int insertSelective(PropValue record);

    PropValue selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PropValue record);

    int updateByPrimaryKey(PropValue record);
}