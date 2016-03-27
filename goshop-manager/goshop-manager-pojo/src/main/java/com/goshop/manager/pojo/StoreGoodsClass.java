package com.goshop.manager.pojo;

public class StoreGoodsClass {
    private String id;

    private String name;

    private String stcstate;

    private String storeid;

    private String parentId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getStcstate() {
        return stcstate;
    }

    public void setStcstate(String stcstate) {
        this.stcstate = stcstate == null ? null : stcstate.trim();
    }

    public String getStoreid() {
        return storeid;
    }

    public void setStoreid(String storeid) {
        this.storeid = storeid == null ? null : storeid.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }
}