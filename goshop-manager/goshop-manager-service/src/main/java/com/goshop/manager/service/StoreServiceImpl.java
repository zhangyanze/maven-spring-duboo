package com.goshop.manager.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goshop.manager.i.StoreService;
import com.goshop.manager.mapper.StoreMapper;
import com.goshop.manager.pojo.Store;
import com.goshop.manager.pojo.StoreJoin;
import com.goshop.manager.pojo.StoreWithBLOBs;
import com.goshop.manager.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("storeService")
public class StoreServiceImpl implements StoreService {

    @Autowired
    StoreMapper storeMapper;

    @Override
    public PageInfo<Store> findAll(Integer curPage, Integer pageSize) {
        //1、设置分页
        if(curPage==null){
            curPage=1;
        }
        if(pageSize==null){
            pageSize=20;
        }
        PageHelper.startPage(curPage, pageSize);
        List<Store> list=storeMapper.findAll();
        return new PageInfo<>(list);
    }

    @Override
    public int openStore(StoreJoin storeJoin) {
        StoreWithBLOBs store = new StoreWithBLOBs();
        store.setStoreName(storeJoin.getStoreName());
        store.setGradeId(storeJoin.getSgId());
        store.setMemberName(storeJoin.getMemberName());
        store.setMemberId(storeJoin.getMemberId());
        store.setSellerName(storeJoin.getSellerName());
        store.setScId(storeJoin.getScId());
        store.setStoreCompanyName(storeJoin.getCompanyName());
        store.setStoreAddress(storeJoin.getCompanyAddressDetail());
        store.setStoreTel(storeJoin.getContactsPhone());
        store.setStoreImage1(storeJoin.getBusinessLicenceNumberElectronic());
        store.setStoreState(1);
        return this.save(store);
    }

    @Override
    public int save(StoreWithBLOBs store) {
        return storeMapper.insertSelective(store);
    }

    @Override
    public Store getCurrentStore(User user) {
        return storeMapper.findByMemberId(user.getId());
    }
}
