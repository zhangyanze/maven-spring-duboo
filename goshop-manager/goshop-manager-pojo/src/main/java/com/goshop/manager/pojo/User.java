package com.goshop.manager.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public class User implements Serializable {
    private Long id;

    private String userName;

    private String loginName;

    private String password;

    private String salt;
    /**
     * 是否停用，1：正常，2：关闭
     */
    private Integer enable;
    /**
     * 用户类型(1:注册用户，2：管理员添加)
     */
    private Integer type;

    private Timestamp created;

    private Timestamp upcreated;

    private List<Role> roleList;

    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName == null ? null : loginName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Timestamp getCreated() {
        return created;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
    }

    public Timestamp getUpcreated() {
        return upcreated;
    }

    public void setUpcreated(Timestamp upcreated) {
        this.upcreated = upcreated;
    }
}