package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.CommodityLog;

public interface CommodityLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityLog record);

    int insertSelective(CommodityLog record);

    CommodityLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityLog record);

    int updateByPrimaryKey(CommodityLog record);
}