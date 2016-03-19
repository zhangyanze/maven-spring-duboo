package com.goshop.portal.i;

import com.goshop.manager.pojo.Member;
import com.goshop.manager.pojo.User;

/**
 * Created by Administrator on 2016/3/19.
 */
public interface RegisterService {
    /**
     * 保存用户数据
     * @param member
     * @return
     */
    int saveMember(Member member);

    boolean checkLoginName(String loginName);
}
