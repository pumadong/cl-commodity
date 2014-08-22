package com.cl.commodity.mapper.base;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.cl.commodity.model.base.Category;

public interface CategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);    
    
    // 以上是为了节约开发时间，使用MyBatisGenerator生成的代码
    // 以下是针对不足功能，添加的代码
    
	/**
	 * 查询所有Category对象
	 * @return
	 */
	List<Category> getCategoryList();
	/**
	 * 查询所有Category对象
	 * @return
	 */
	List<Category> getCategoryListByParentId(@Param("parentId")Integer parentId);
	/**
	 * 部门是否被用户使用
	 * @param departmentId
	 */
	Boolean isUsed(Integer departmentId);    
}