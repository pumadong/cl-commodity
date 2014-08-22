package com.cl.commodity.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.commodity.biz.ICategoryService;
import com.cl.commodity.model.base.Category;
import com.cl.commodity.utils.ConfigUtil;
import com.cl.commodity.utils.ConstantUtil;
import com.cl.commodity.utils.JsonUtil;
import com.cl.commodity.utils.SessionUtil;
import com.cl.privilege.api.IPrivilegeBaseApiService;
import com.cl.privilege.model.User;



/**
 *部门管理相关的控制器 
 */

@Controller
@RequestMapping("/controller/category")
public class CategoryController {

	@Autowired
	private IPrivilegeBaseApiService privilegeBaseApiService;
	@Autowired
	private ConfigUtil configUtil;
	@Autowired
	private ICategoryService categoryService;
	
	@RequestMapping("/list")
    public String main(String visitedModule,String visitedResource,HttpServletRequest request,ModelMap map) {

		//初始化用户、菜单
		User user = SessionUtil.getSessionUser(request);
		String menus = privilegeBaseApiService.getModuleTree(user.getId(),visitedModule,visitedResource);
        map.put("user", user);
        map.put("menus", menus);
        
		return "category/list.ftl";
    }
	
	@ResponseBody
	@RequestMapping("/getCategoryTree")
    public String getCategoryTree(HttpServletResponse response,ModelMap map) {

		//这是为了jstree插件使用，这个插件只对Content-Type为json和html的内容进行处理		
		response.setContentType("application/json;charset=UTF-8");
	
		return categoryService.getCategoryTree();
	}
	
	@ResponseBody
	@RequestMapping("/get")
    public String get(Integer id,ModelMap map) {
		
		Category category = categoryService.getCategoryById(id);		
		return JsonUtil.convertObj2json(category).toString();
	}
	
	@ResponseBody
	@RequestMapping("/add")
    public String add(@ModelAttribute("category")Category category,HttpServletRequest request) {
		
		//从session取出User对象
		User user = SessionUtil.getSessionUser(request);
		//生成节点
		categoryService.createCategory(category,user);		
		return JsonUtil.convertObj2json(category).toString();
    }
	
	@ResponseBody
	@RequestMapping("/update")
    public String update(@ModelAttribute("category")  Category category,HttpServletRequest request) {
		//从session取出User对象
		User user = SessionUtil.getSessionUser(request);

		//生成节点积累
		categoryService.updateCategoryById(category,user);
		
		return JsonUtil.convertObj2json(category).toString();
    }
	
	@ResponseBody
	@RequestMapping("/delete")
	public String  delete(@RequestParam("id") Integer id,HttpServletRequest request) throws Exception{		
	
		//判断节点是否被用户关联
		if(categoryService.isUsed(id))
		{
			return ConstantUtil.Fail;
		}
		
		//从session取出User对象
		User user = SessionUtil.getSessionUser(request);
		
		Category category = new Category();
		category.setId(id);
		category.setIsDelete(true);
		categoryService.updateCategoryById(category, user);
		
		return ConstantUtil.Success;
	}
}
