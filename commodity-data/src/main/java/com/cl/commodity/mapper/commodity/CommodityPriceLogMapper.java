package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.CommodityPriceLog;

public interface CommodityPriceLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityPriceLog record);

    int insertSelective(CommodityPriceLog record);

    CommodityPriceLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityPriceLog record);

    int updateByPrimaryKey(CommodityPriceLog record);
}