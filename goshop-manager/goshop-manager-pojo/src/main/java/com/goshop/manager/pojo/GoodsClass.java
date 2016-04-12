package com.goshop.manager.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GoodsClass  implements Serializable {
    private Integer gcId;

    private String gcName;

    private Integer typeId;

    private String typeName;

    private Integer gcParentId;

    private Integer gcSort;

    private String gcTitle;

    private String gcKeywords;

    private String gcDescription;

    private Date solrUpdateTime;

    private List<GoodsClass> children = new ArrayList<GoodsClass>();

    public List<GoodsClass> getChildren() {
        return children;
    }

    public void setChildren(List<GoodsClass> children) {
        this.children = children;
    }

    public Integer getGcId() {
        return gcId;
    }

    public void setGcId(Integer gcId) {
        this.gcId = gcId;
    }

    public String getGcName() {
        return gcName;
    }

    public void setGcName(String gcName) {
        this.gcName = gcName == null ? null : gcName.trim();
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }

    public Integer getGcParentId() {
        return gcParentId;
    }

    public void setGcParentId(Integer gcParentId) {
        this.gcParentId = gcParentId;
    }

    public Integer getGcSort() {
        return gcSort;
    }

    public void setGcSort(Integer gcSort) {
        this.gcSort = gcSort;
    }

    public String getGcTitle() {
        return gcTitle;
    }

    public void setGcTitle(String gcTitle) {
        this.gcTitle = gcTitle == null ? null : gcTitle.trim();
    }

    public String getGcKeywords() {
        return gcKeywords;
    }

    public void setGcKeywords(String gcKeywords) {
        this.gcKeywords = gcKeywords == null ? null : gcKeywords.trim();
    }

    public String getGcDescription() {
        return gcDescription;
    }

    public void setGcDescription(String gcDescription) {
        this.gcDescription = gcDescription == null ? null : gcDescription.trim();
    }

    public Date getSolrUpdateTime() {
        return solrUpdateTime;
    }

    public void setSolrUpdateTime(Date solrUpdateTime) {
        this.solrUpdateTime = solrUpdateTime;
    }
}