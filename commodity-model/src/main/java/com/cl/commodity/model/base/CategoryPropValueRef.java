package com.cl.commodity.model.base;

import java.util.Date;

public class CategoryPropValueRef {
    private Integer id;

    private Integer categoryId;

    private Integer propValueId;

    private String createPerson;

    private Date createDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public Integer getPropValueId() {
        return propValueId;
    }

    public void setPropValueId(Integer propValueId) {
        this.propValueId = propValueId;
    }

    public String getCreatePerson() {
        return createPerson;
    }

    public void setCreatePerson(String createPerson) {
        this.createPerson = createPerson;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}