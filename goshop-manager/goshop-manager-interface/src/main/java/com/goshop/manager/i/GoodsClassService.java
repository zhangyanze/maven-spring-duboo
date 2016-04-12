package com.goshop.manager.i;

import com.goshop.manager.pojo.GoodsClass;

import java.util.List;

/**
 * Created by Administrator on 2016/4/12.
 */
public interface GoodsClassService {

    List<GoodsClass> findTreeByGcParentId(Integer gcParentId);
}
