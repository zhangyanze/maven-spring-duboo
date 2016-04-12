package com.goshop.manager.service;

import com.goshop.manager.i.GoodsClassService;
import com.goshop.manager.mapper.GoodsClassMapper;
import com.goshop.manager.pojo.GoodsClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("goodsClassService")
public class GoodsClassServiceImpl implements GoodsClassService {

    @Autowired
    GoodsClassMapper goodsClassMapper;

    @Override
    public List<GoodsClass> findTreeByGcParentId(Integer gcParentId) {
        return goodsClassMapper.findTreeByGcParentId(gcParentId);
    }
}
