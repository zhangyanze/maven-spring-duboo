package com.goshop.manager.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.StoreJoinManageService;
import com.goshop.manager.mapper.StoreJoinMapper;
import com.goshop.manager.pojo.StoreJoin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StoreJoinManageServiceImpl implements StoreJoinManageService {

    @Autowired
    StoreJoinMapper storeJoinMapper;

    @Override
    public PageInfo<StoreJoin> findAll(Integer curPage, Integer pageSize) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<StoreJoin> list = storeJoinMapper.findAll();
        return new PageInfo<>(list);
    }

    @Override
    public StoreJoin find(Long memberId) {
        return storeJoinMapper.selectByPrimaryKey(memberId);
    }
}
