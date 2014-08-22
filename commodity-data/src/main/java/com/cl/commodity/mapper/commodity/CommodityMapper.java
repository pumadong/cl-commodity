package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.Commodity;

public interface CommodityMapper {
    int deleteByPrimaryKey(String no);

    int insert(Commodity record);

    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(String no);

    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);
}