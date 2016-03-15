package com.goshop.security.service;

import com.goshop.security.pojo.Role;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

import static org.junit.Assert.*;

/**
 * Created by Administrator on 2016/3/12.
 */
public class RoleServiceImplTest extends BaseTest {

    @Autowired
    RoleService roleService;

    @Test
    public void findOfUserOne() throws Exception {
        Role role = roleService.findOfUserOne(Long.valueOf(0));
        logger.debug("~~~~~~~~~~~~~~~"+role);
    }

    @Test
    public void testUpdateByPrimaryKey() throws Exception {

    }

    @Test
    public void testFindOne() throws Exception {

    }

    @Test
    public void testFindByName() throws Exception {

    }

    @Test
    public void testDelete() throws Exception {

    }
}