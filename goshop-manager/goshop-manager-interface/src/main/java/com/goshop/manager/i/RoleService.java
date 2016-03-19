package com.goshop.manager.i;

import com.goshop.manager.pojo.Role;

/**
 * Created by Administrator on 2016/3/12.
 */
public interface RoleService {

    int save(Role role);

    int updateByPrimaryKey(Role role);

    Role findOne(Long id);

    Role findByName(String name);

    int delete(Long id);

    Role findOfUserOne(Long id);
}
