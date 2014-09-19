package com.cl.commodity.model.commodity;

import java.math.BigDecimal;
import java.util.Date;

public class CommodityPriceLog {
    private Integer id;

    private String commodityNo;

    private Byte logTypeId;

    private BigDecimal oldPrice;

    private BigDecimal newPrice;

    private String createPerson;

    private Date createDate;

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

    public Byte getLogTypeId() {
        return logTypeId;
    }

    public void setLogTypeId(Byte logTypeId) {
        this.logTypeId = logTypeId;
    }

    public BigDecimal getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(BigDecimal oldPrice) {
        this.oldPrice = oldPrice;
    }

    public BigDecimal getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(BigDecimal newPrice) {
        this.newPrice = newPrice;
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