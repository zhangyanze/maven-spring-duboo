package com.goshop.manager.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.ArrayList;
import java.util.List;

public class CmsArticleClass {
    private Long classId;

    private Long parentId;

    private String className;

    private Integer classSort;

    //虚拟字段
    private Integer grade;

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    @JsonIgnore
    private List<CmsArticleClass> children = new ArrayList<>();

    public List<CmsArticleClass> getChildren() {
        return children;
    }

    public void setChildren(List<CmsArticleClass> children) {
        this.children = children;
    }

    public Long getClassId() {
        return classId;
    }

    public void setClassId(Long classId) {
        this.classId = classId;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public Integer getClassSort() {
        return classSort;
    }

    public void setClassSort(Integer classSort) {
        this.classSort = classSort;
    }
}