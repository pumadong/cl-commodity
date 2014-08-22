package com.cl.commodity.mapper.commodity;

import com.cl.commodity.model.commodity.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(String no);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(String no);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}