package com.goshop.manager.service;

import com.goshop.common.utils.RandomUtils;
import com.goshop.manager.i.UserService;
import com.goshop.manager.mapper.UserMapper;
import com.goshop.manager.pojo.Permission;
import com.goshop.manager.pojo.User;
import com.goshop.shiro.service.PasswordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    private PasswordService passwordService;

    @Override
    public int save(User user) {
        return userMapper.insert(passWordUser(user));
    }

    @Override
    public int updateByPrimaryKey(User user) {
        return userMapper.updateByPrimaryKey(passWordUser(user));
    }

    @Override
    public User findOne(Long id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public User findByLoginName(String loginName) {
        return userMapper.findByLoginName(loginName);
    }

    @Override
    public int delete(Long id) {
        return userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public User findOfRoleOne(Long id) {
        return userMapper.findOfRoleOne(id);
    }

    @Override
    public List<Permission> findPermissionListByUserId(Long userId) {
        return userMapper.findPermissionListByUserId(userId);
    }

    /**
     * 将密码加密
     * @param user
     * @return
     */
    private  User passWordUser(User user){

        if(StringUtils.hasText(user.getPassword())){
            String salt= RandomUtils.generateString(5);
            user.setPassword(passwordService.encryptPassword(user.getPassword(),salt));
            user.setSalt(salt);
        }
        return user;
    }
}
