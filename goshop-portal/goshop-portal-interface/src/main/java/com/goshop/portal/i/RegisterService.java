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

    /**
     * 检测邮件
     * @param memberEmail true为已存在这个邮件
     * @return
     */
    boolean checkEmail(String memberEmail);

    /**
     * 检测用户名
     * @param loginName true为登录名已经存在
     * @return
     */
    boolean checkLoginName(String loginName);
}
