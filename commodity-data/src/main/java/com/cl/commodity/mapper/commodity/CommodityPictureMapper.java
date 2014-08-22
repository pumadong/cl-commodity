package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.CommodityPicture;

public interface CommodityPictureMapper {
    int deleteByPrimaryKey(String name);

    int insert(CommodityPicture record);

    int insertSelective(CommodityPicture record);

    CommodityPicture selectByPrimaryKey(String name);

    int updateByPrimaryKeySelective(CommodityPicture record);

    int updateByPrimaryKey(CommodityPicture record);
}