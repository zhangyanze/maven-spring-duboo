package com.goshop.manager.service;


import com.goshop.manager.i.RoleService;
import com.goshop.manager.mapper.RoleMapper;
import com.goshop.manager.pojo.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleMapper roleMapper;

    @Override
    public int save(Role role) {
        return roleMapper.insert(role);
    }

    @Override
    public int updateByPrimaryKey(Role role) {
        return roleMapper.updateByPrimaryKey(role);
    }

    @Override
    public Role findOne(Long id) {
        return roleMapper.selectByPrimaryKey(id);
    }

    @Override
    public Role findByName(String name) {
        return roleMapper.findByName(name);
    }

    @Override
    public int delete(Long id) {
        return roleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Role findOfUserOne(Long id) {
        return roleMapper.findOfUserOne(id);
    }
}
