package com.goshop.manager.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.mapper.StoreClassMapper;
import com.goshop.manager.pojo.StoreClass;
import com.goshop.manager.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "classpath*:/spring/applicationContext*.xml"})
public class PageHelperTest {

    @Autowired
    StoreClassMapper storeClassMapper;

    @Test
    public void test(){
        //1、设置分页
        PageHelper.startPage(1, 5);
        List list= storeClassMapper.findAll();
        //4、取分页后结果
        PageInfo<StoreClass> pageInfo = new PageInfo<>(list);
        long longtotal = pageInfo.getTotal();
        System.out.println("total:" + longtotal);
        int intpages = pageInfo.getPages();
        System.out.println("pages:" + intpages);
        int intpageSize = pageInfo.getPageSize();
        System.out.println("pageSize:" + intpageSize);

    }
}
