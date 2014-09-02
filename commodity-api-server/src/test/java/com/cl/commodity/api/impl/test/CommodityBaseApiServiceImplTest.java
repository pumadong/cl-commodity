package com.cl.commodity.api.impl.test;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cl.commodity.api.impl.CommodityBaseApiServiceImpl;
import com.cl.commodity.model.commodity.Commodity;


public class CommodityBaseApiServiceImplTest {
	
	private static CommodityBaseApiServiceImpl service;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-test.xml");  
		service = (CommodityBaseApiServiceImpl)ctx.getBean("commodityBaseApiServiceImpl");
		ctx.close();
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void getCommodityByNo() {
		Commodity commodity = service.getCommodityByNo("99913497");
		if(commodity == null)
		{
			System.out.println("commodity is null");
		} else {
			System.out.println("commodity is not null");
		}
	}
}
