package com.goshop.manager.model;

/**
 * Created by Administrator on 2016/4/10.
 */
public class StoreClassModel {

    private Long sc_id;

    private String sc_name;

    private Long sc_parent_id;

    private Integer sc_sort;

    private Integer deep;

    public Long getSc_id() {
        return sc_id;
    }

    public void setSc_id(Long sc_id) {
        this.sc_id = sc_id;
    }

    public String getSc_name() {
        return sc_name;
    }

    public void setSc_name(String sc_name) {
        this.sc_name = sc_name;
    }

    public Long getSc_parent_id() {
        return sc_parent_id;
    }

    public void setSc_parent_id(Long sc_parent_id) {
        this.sc_parent_id = sc_parent_id;
    }

    public Integer getSc_sort() {
        return sc_sort;
    }

    public void setSc_sort(Integer sc_sort) {
        this.sc_sort = sc_sort;
    }

    public Integer getDeep() {
        return deep;
    }

    public void setDeep(Integer deep) {
        this.deep = deep;
    }
}
