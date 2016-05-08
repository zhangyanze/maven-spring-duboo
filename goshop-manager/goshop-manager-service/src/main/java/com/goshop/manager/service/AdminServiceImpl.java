package com.goshop.manager.service;

import com.goshop.manager.i.AdminService;
import com.goshop.manager.mapper.RoleMapper;
import com.goshop.manager.mapper.UserMapper;
import com.goshop.manager.mapper.UserRoleMapper;
import com.goshop.manager.pojo.Role;
import com.goshop.manager.pojo.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;


@Service("adminService")
public class AdminServiceImpl implements AdminService {

    private final static String ADMIN_ROLE="admin";

    @Autowired
    UserMapper userMapper;

    @Autowired
    RoleMapper roleMapper;

    @Autowired
    UserRoleMapper userRoleMapper;

    @Override
    public Integer getIsAdmin(Long userId) {
        return userMapper.findByRoleCount(userId, ADMIN_ROLE);
    }

    @Override
    public void setAdmin(Long userId,Integer isAdmin) {
        if(userId==0){
            return;
        }
        Role role = roleMapper.findByName(ADMIN_ROLE);
        UserRole userRole = userRoleMapper.findByUIdAndRId(userId, role.getId());
        if(isAdmin!=null&&isAdmin==1){
            if(userRole==null) {
                userRole=new UserRole();
                userRole.setuId(userId);
                userRole.setrId(role.getId());
                userRoleMapper.insert(userRole);
            }
        }else{
            if(userRole!=null) {
                userRoleMapper.deleteByUIdAndRId(userId, role.getId());
            }
        }
    }
}
