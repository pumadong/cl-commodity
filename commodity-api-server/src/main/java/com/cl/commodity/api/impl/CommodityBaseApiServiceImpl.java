package com.cl.commodity.api.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.cl.commodity.api.ICommodityBaseApiService;
import com.cl.commodity.mapper.commodity.CommodityMapper;
import com.cl.commodity.model.commodity.Commodity;

public class CommodityBaseApiServiceImpl implements ICommodityBaseApiService {

	@Autowired
	private CommodityMapper commodityMapper;
	
	@Override
	public Commodity getCommodityByNo(String no) {
		return commodityMapper.selectByPrimaryKey(no);
	}

}
