package com.goshop.manager.pojo;

import java.util.ArrayList;
import java.util.List;

public class StoreClass {
    private Long id;

    private Integer sort;

    private String name;

    private Long parentId;

    private List<StoreClass> children = new ArrayList<StoreClass>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId ;
    }

    public List<StoreClass> getChildren() {
        return children;
    }

    public void setChildren(List<StoreClass> children) {
        this.children = children;
    }
}