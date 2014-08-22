package com.cl.commodity.model.commodity;

import java.util.Date;

public class SizechartCategoryBrandRef {
    private Integer id;

    private Integer sizechartId;

    private Integer catId;

    private Integer brandId;

    private String createPerson;

    private Date createDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSizechartId() {
        return sizechartId;
    }

    public void setSizechartId(Integer sizechartId) {
        this.sizechartId = sizechartId;
    }

    public Integer getCatId() {
        return catId;
    }

    public void setCatId(Integer catId) {
        this.catId = catId;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
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