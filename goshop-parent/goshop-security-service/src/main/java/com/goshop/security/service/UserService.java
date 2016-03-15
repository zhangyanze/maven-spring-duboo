package com.goshop.security.service;

import com.goshop.security.pojo.Permission;
import com.goshop.security.pojo.User;

import java.util.List;

/**
 * Created by Administrator on 2016/3/11.
 */
public interface UserService {
    /**
     * 添加用户
     * @param user
     * @return
     */
    int save(User user);

    int updateByPrimaryKey(User user);

    User findOne(Long id);

    User findByLoginName(String loginName);

    int delete(Long id);

    User findOfRoleOne(Long id);

    List<Permission> findPermissionListByUserId(Long userId);
}
