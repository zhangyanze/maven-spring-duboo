package com.goshop.manager.i;


import com.github.pagehelper.PageInfo;
import com.goshop.manager.pojo.Permission;
import com.goshop.manager.pojo.StoreGrade;
import com.goshop.manager.pojo.User;

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

    void updateLoginInfo(User user, String ip);
}
