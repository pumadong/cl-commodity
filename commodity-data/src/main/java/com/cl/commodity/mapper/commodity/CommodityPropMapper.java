package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.CommodityProp;

public interface CommodityPropMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityProp record);

    int insertSelective(CommodityProp record);

    CommodityProp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityProp record);

    int updateByPrimaryKey(CommodityProp record);
}