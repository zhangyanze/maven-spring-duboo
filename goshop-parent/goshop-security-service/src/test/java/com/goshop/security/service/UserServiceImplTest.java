package com.goshop.security.service;

import com.goshop.security.pojo.Permission;
import com.goshop.security.pojo.User;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.Date;
import java.util.List;


public class UserServiceImplTest extends BaseTest {

    @Autowired
    UserService userService;

    private static String TEST_NAME="test";

    @Test
    public void testSave(){
        User user = userService.findByLoginName(TEST_NAME);
        if(user!=null){
            userService.delete(user.getId());
        }
        user = new User();
        user.setLoginName(TEST_NAME);
        user.setPassword("1111");
        user.setEnable(1);
        user.setType(1);
        user.setCreated(new Date());
        user.setUpcreated(new Date());
        user.setUserName("测试用户");
        int num = userService.save(user);
        Assert.assertTrue("数据没有保存！",num==1);
    }

    @Test
    public  void testFindOfRoleOne(){
        User user = userService.findOfRoleOne(Long.valueOf(1));
        logger.debug(user);
    }

    @Test
    public void testFindPermissionListByUserId() {
        List<Permission> ps = userService.findPermissionListByUserId(Long.valueOf(0));
        logger.debug(ps.size());
    }

} 
