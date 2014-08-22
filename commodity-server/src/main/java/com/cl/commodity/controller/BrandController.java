package com.cl.commodity.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.commodity.biz.IBrandService;
import com.cl.commodity.model.base.Brand;
import com.cl.commodity.model.base.BrandSearchModel;
import com.cl.commodity.utils.ConfigUtil;
import com.cl.commodity.utils.ConstantUtil;
import com.cl.commodity.utils.JsonUtil;
import com.cl.commodity.utils.SessionUtil;
import com.cl.privilege.api.IPrivilegeBaseApiService;
import com.cl.privilege.model.User;



/**
 *角色管理相关的控制器 
 */

@Controller
@RequestMapping("/controller/brand")
public class BrandController {

	@Autowired
	private IPrivilegeBaseApiService privilegeBaseApiService;
	@Autowired
	private ConfigUtil configUtil;
	@Autowired
	private IBrandService brandService;
	
	@RequestMapping("/list")
    public String main(String visitedModule,String visitedResource,HttpServletRequest request,ModelMap map) {

		//初始化用户、菜单
		User user = SessionUtil.getSessionUser(request);
		String menus = privilegeBaseApiService.getModuleTree(user.getId(),visitedModule,visitedResource);
        map.put("user", user);
        map.put("menus", menus);
        
		return "brand/list.ftl";
    }
	
	@ResponseBody
	@RequestMapping("/getBrandDataTables")
    public String getBrandDataTables(BrandSearchModel searchModel,ModelMap map) {
		return brandService.getBrandDataTables(searchModel);
	}
	
	@ResponseBody
	@RequestMapping("/getBrandDataRow")
	public String  getBrandDataRow(@RequestParam("id") Integer id) throws Exception{		
		return brandService.getBrandDataRow(id);
	}
	
	@ResponseBody
	@RequestMapping("/get")
	public String  get(@RequestParam("id") Integer id) throws Exception{		
		Brand brand = brandService.getBrandById(id);		
		return JsonUtil.convertObj2json(brand).toString();	
	}
	
	@RequestMapping("/addform")
    public String addform() {		
		return "brand/addform.ftl";
    }
	
	@ResponseBody
	@RequestMapping("/add")
    public String add(@ModelAttribute("brand")Brand brand,HttpServletRequest request) {
		//从session取出User对象
		//User user = SessionUtil.getSessionUser(request);
		//尚未实现
		//brandService.createBrand(brand,user);
		return ConstantUtil.Success;
    }
	
	@RequestMapping("/updateform")
    public String updateform(Integer id,HttpServletRequest request,ModelMap map) {
		Brand brand = brandService.getBrandById(id);
		map.put("brand", brand);
		return "brand/updateform.ftl";
    }
	
	@ResponseBody
	@RequestMapping("/update")
    public String update(@ModelAttribute("brand")  Brand brand,HttpServletRequest request) {
		//从session取出User对象
		//User user = SessionUtil.getSessionUser(request);
		//尚未实现
		//brandService.updateBrandById(brand,user);
		
		return ConstantUtil.Success;
    }
	
	@ResponseBody
	@RequestMapping("/delete")
	public String  delete(@RequestParam("id") Integer id,HttpServletRequest request) {		
	
		//判断节点是否被用户关联
		if(brandService.isUsed(id))
		{
			return ConstantUtil.Fail;
		}
		//从session取出User对象
		User user = SessionUtil.getSessionUser(request);
		
		Brand brand = new Brand();
		brand.setId(id);
		brand.setIsDelete(true);
		brandService.updateBrandById(brand, user);
		
		return ConstantUtil.Success;
	}
	
	@RequestMapping("/assignform")
	public String assignform(String id,ModelMap map)
	{
		map.put("id", id);
		return "brand/assignform.ftl";
	}
}
