package com.cl.commodity.model.base;

import java.util.Date;

public class Brand {
    private Integer id;

    private String name;

    private String englishName;

    private String website;

    private String picLarge;

    private String picMiddle;

    private String picSmall;

    private String letter;

    private Integer sortNo;

    private Boolean isDelete;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEnglishName() {
        return englishName;
    }

    public void setEnglishName(String englishName) {
        this.englishName = englishName;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getPicLarge() {
        return picLarge;
    }

    public void setPicLarge(String picLarge) {
        this.picLarge = picLarge;
    }

    public String getPicMiddle() {
        return picMiddle;
    }

    public void setPicMiddle(String picMiddle) {
        this.picMiddle = picMiddle;
    }

    public String getPicSmall() {
        return picSmall;
    }

    public void setPicSmall(String picSmall) {
        this.picSmall = picSmall;
    }

    public String getLetter() {
        return letter;
    }

    public void setLetter(String letter) {
        this.letter = letter;
    }

    public Integer getSortNo() {
        return sortNo;
    }

    public void setSortNo(Integer sortNo) {
        this.sortNo = sortNo;
    }

    public Boolean getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Boolean isDelete) {
        this.isDelete = isDelete;
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