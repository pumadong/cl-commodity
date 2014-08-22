package com.cl.commodity.model.commodity;

import java.util.Date;

public class CommodityProp {
    private Integer id;

    private String commodityNo;

    private Integer propValueId;

    private String createPerson;

    private Date createDate;

    private String updatePerson;

    private Date updateDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCommodityNo() {
        return commodityNo;
    }

    public void setCommodityNo(String commodityNo) {
        this.commodityNo = commodityNo;
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

    public String getUpdatePerson() {
        return updatePerson;
    }

    public void setUpdatePerson(String updatePerson) {
        this.updatePerson = updatePerson;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}