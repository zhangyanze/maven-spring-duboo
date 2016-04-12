package com.goshop.manager.service;

import com.goshop.manager.i.GoodsTypeService;
import com.goshop.manager.mapper.GoodsTypeMapper;
import com.goshop.manager.pojo.GoodsType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("goodsTypeService")
public class GoodsTypeServiceImpl implements GoodsTypeService {

    @Autowired
    GoodsTypeMapper goodsTypeMapper;

    @Override
    public List<GoodsType> findAll() {
        return goodsTypeMapper.findAll();
    }
}
