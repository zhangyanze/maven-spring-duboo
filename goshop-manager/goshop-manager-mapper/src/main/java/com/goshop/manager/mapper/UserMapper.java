package com.goshop.manager.mapper;

import com.goshop.manager.pojo.Permission;
import com.goshop.manager.pojo.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User findByLoginName(String loginName);

    User findOfRoleOne(Long id);

    List<Permission> findPermissionListByUserId(Long userId);

    int findByLoginNameCount(String loginName);
}