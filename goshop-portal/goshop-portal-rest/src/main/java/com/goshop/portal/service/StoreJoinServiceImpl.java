package com.goshop.portal.service;

import com.goshop.common.utils.BeanUtils;
import com.goshop.manager.mapper.StoreJoinMapper;
import com.goshop.manager.pojo.StoreJoin;
import com.goshop.manager.pojo.User;
import com.goshop.portal.i.StoreInfoModel;
import com.goshop.portal.i.StoreJoinService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

@Service("storeJoinService")
public class StoreJoinServiceImpl implements StoreJoinService {

    protected final Log logger = LogFactory.getLog(this.getClass());

    @Autowired
    StoreJoinMapper storeJoinMapper;

    @Override
    public void applySeller(User user,StoreJoin storeJoin) {
        StoreJoin userStoreJoin = this.getCurrentUserStoreJoin(user.getId());
        if (userStoreJoin == null) {
            storeJoin.setMemberId(user.getId());
            storeJoin.setMemberName(user.getUserName());
            storeJoinMapper.insert(storeJoin);
        } else {
            try {
                BeanUtils.applyIf(userStoreJoin, storeJoin);
            } catch (Exception e) {
                e.printStackTrace();
            }
            storeJoinMapper.updateByPrimaryKey(userStoreJoin);
        }

    }

    @Override
    public StoreInfoModel applySellerThree(User user, StoreJoin storeJoin) {
        StoreJoin userStoreJoin = getCurrentUserStoreJoin(user.getId());
        Assert.notNull(userStoreJoin, "请先执行第一步！");
        try {
            BeanUtils.applyIf(userStoreJoin, storeJoin);
        } catch (Exception e) {
            e.printStackTrace();
        }
        storeJoinMapper.updateByPrimaryKey(userStoreJoin);

        return null;
    }

    private StoreJoin getCurrentUserStoreJoin(Long userId) {
        return storeJoinMapper.selectByPrimaryKey(userId);
    }
}
