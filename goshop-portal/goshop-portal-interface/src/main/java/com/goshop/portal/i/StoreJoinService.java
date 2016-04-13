package com.goshop.portal.i;

import com.goshop.manager.pojo.StoreJoin;
import com.goshop.manager.pojo.User;

/**
 * Created by Administrator on 2016/3/24.
 */
public interface StoreJoinService {
    /**
     * 用户申请卖家
     * @param storeJoin
     */
    void applySeller(User user,StoreJoin storeJoin);

    /**
     * 第三步用户申请卖家，并返回所需的实体信息
     * @param user
     * @param storeJoin
     * @return
     */
    StoreInfoModel applySellerThree(User user, StoreJoin storeJoin);

    boolean verificationSellerName(String sellerName,Long userId);

    boolean verificationStoreName(String storeName,Long userId);
}
