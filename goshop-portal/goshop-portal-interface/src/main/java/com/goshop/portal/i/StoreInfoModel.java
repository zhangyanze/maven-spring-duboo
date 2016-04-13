package com.goshop.portal.i;

import com.goshop.manager.pojo.GoodsClass;
import com.goshop.manager.pojo.StoreClass;
import com.goshop.manager.pojo.StoreGoodsClass;
import com.goshop.manager.pojo.StoreGrade;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2016/3/27.
 */
public class StoreInfoModel implements Serializable {

    //店铺分类
    private List<StoreClass> storeClassParentList;
    //店铺等级
    private List<StoreGrade> storeGradeList;
    //经营类目
    private List<GoodsClass> goodsClassParentList;

    public List<StoreClass> getStoreClassParentList() {
        return storeClassParentList;
    }

    public void setStoreClassParentList(List<StoreClass> storeClassParentList) {
        this.storeClassParentList = storeClassParentList;
    }

    public List<StoreGrade> getStoreGradeList() {
        return storeGradeList;
    }

    public void setStoreGradeList(List<StoreGrade> storeGradeList) {
        this.storeGradeList = storeGradeList;
    }

    public List<GoodsClass> getGoodsClassParentList() {
        return goodsClassParentList;
    }

    public void setGoodsClassParentList(List<GoodsClass> goodsClassParentList) {
        this.goodsClassParentList = goodsClassParentList;
    }
}
