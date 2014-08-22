package com.cl.commodity.mapper.base;

import com.cl.commodity.model.base.PropItem;

public interface PropItemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PropItem record);

    int insertSelective(PropItem record);

    PropItem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PropItem record);

    int updateByPrimaryKey(PropItem record);
}