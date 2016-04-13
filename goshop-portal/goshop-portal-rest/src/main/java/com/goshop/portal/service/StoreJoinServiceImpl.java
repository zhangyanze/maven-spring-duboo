package com.goshop.portal.service;

import com.goshop.common.exception.MapperException;
import com.goshop.common.utils.BeanUtils;
import com.goshop.manager.i.GoodsClassService;
import com.goshop.manager.i.StoreClassService;
import com.goshop.manager.i.StoreGradeService;
import com.goshop.manager.mapper.StoreJoinMapper;
import com.goshop.manager.pojo.*;
import com.goshop.portal.i.StoreInfoModel;
import com.goshop.portal.i.StoreJoinService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.List;

@Service("storeJoinService")
public class StoreJoinServiceImpl implements StoreJoinService {

    protected final Log logger = LogFactory.getLog(this.getClass());

    @Autowired
    StoreJoinMapper storeJoinMapper;

    @Autowired
    StoreClassService storeClassService;

    @Autowired
    StoreGradeService storeGradeService;

    @Autowired
    GoodsClassService goodsClassService;

    @Override
    public void applySeller(User user,StoreJoin storeJoin) {
        StoreJoin userStoreJoin = this.getCurrentUserStoreJoin(user.getId());
        storeJoin.setMemberId(user.getId());
        if (userStoreJoin == null) {
            storeJoin.setMemberName(user.getUserName());
            storeJoinMapper.insert(storeJoin);
        } else {
            storeJoinMapper.updateByPrimaryKeySelective(userStoreJoin);
        }

    }

    @Override
    public StoreInfoModel applySellerThree(User user, StoreJoin storeJoin) {
        StoreJoin userStoreJoin = getCurrentUserStoreJoin(user.getId());
        Assert.notNull(userStoreJoin, "请先执行第一步！");
        storeJoin.setMemberId(user.getId());
        storeJoinMapper.updateByPrimaryKeySelective(storeJoin);
        //店铺分类
        List<StoreClass> storeClassParentList = storeClassService.findTreeByParentId(null);
        //店铺等级
        List<StoreGrade> storeGradeList = storeGradeService.findAll();
        //经营类目
        List<GoodsClass> goodsClassParentList = goodsClassService.findByGcParentId(0);

        StoreInfoModel storeInfoModel = new StoreInfoModel();
        storeInfoModel.setStoreClassParentList(storeClassParentList);
        storeInfoModel.setStoreGradeList(storeGradeList);
        storeInfoModel.setGoodsClassParentList(goodsClassParentList);
        return storeInfoModel;
    }

    @Override
    public boolean verificationSellerName(String sellerName,Long userId) {
        List<StoreJoin> list=storeJoinMapper.findBySellerName(sellerName);
        if(list.size()>1){
            throw new MapperException("数据异常");
        }else if(list.size()==1){
            if(list.get(0).getMemberId()!=userId){
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean verificationStoreName(String storeName,Long userId) {
        List<StoreJoin> list=storeJoinMapper.findByStoreName(storeName);
        if(list.size()>1){
            throw new MapperException("数据异常");
        }else if(list.size()==1){
            if(list.get(0).getMemberId()!=userId){
                return false;
            }
        }
        return true;
    }

    private StoreJoin getCurrentUserStoreJoin(Long userId) {
        return storeJoinMapper.selectByPrimaryKey(userId);
    }
}
