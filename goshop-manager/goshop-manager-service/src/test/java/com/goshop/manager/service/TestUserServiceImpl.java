package com.goshop.manager.service;

import com.goshop.manager.i.UserService;
import com.goshop.manager.pojo.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Administrator on 2016/3/18.
 */
public class TestUserServiceImpl extends BaseTest {

    @Autowired
    UserService userService;

    @Test
    public void test(){
        User user=userService.findByLoginName("admin");
        logger.info(user.getId());
    }
}
