package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.Sizechart;

public interface SizechartMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sizechart record);

    int insertSelective(Sizechart record);

    Sizechart selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sizechart record);

    int updateByPrimaryKey(Sizechart record);
}