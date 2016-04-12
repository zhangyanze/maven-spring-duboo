package com.goshop.portal.service;

import org.springframework.stereotype.Service;
import com.goshop.manager.mapper.StoreGoodsClassMapper;
import com.goshop.manager.pojo.StoreGoodsClass;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class StoreGoodsClassServiceImpl implements StoreGoodsClassService {
    @Autowired
    StoreGoodsClassMapper storeGoodsClassMapper;

    @Override
    public List<StoreGoodsClass> findByStcParentId(Integer parentId) {
        return storeGoodsClassMapper.findByStcParentId(parentId);
    }
}
