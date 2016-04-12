package com.goshop.portal.service;

import com.goshop.common.utils.BeanUtils;
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
    StoreGoodsClassService storeGoodsClassService;

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
        List<StoreGoodsClass> goodsClassParentList = storeGoodsClassService.findByStcParentId(null);

        StoreInfoModel storeInfoModel = new StoreInfoModel();
        storeInfoModel.setStoreClassParentList(storeClassParentList);
        storeInfoModel.setStoreGradeList(storeGradeList);
        storeInfoModel.setGoodsClassParentList(goodsClassParentList);
        return storeInfoModel;
    }

    private StoreJoin getCurrentUserStoreJoin(Long userId) {
        return storeJoinMapper.selectByPrimaryKey(userId);
    }
}
