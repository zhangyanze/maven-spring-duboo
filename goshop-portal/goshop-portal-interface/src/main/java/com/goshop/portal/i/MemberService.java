package com.goshop.portal.i;

import com.goshop.manager.pojo.Member;
import com.goshop.manager.pojo.User;

/**
 * Created by Administrator on 2016/3/19.
 */
public interface MemberService {
    /**
     * 保存用户数据
     * @param member
     * @return
     */
    int saveMember(Member member,User user);

    /**
     * 检测邮件
     * @param memberEmail true为已存在这个邮件
     * @return
     */
    Boolean checkEmail(String memberEmail);

    /**
     * 检测用户名
     * @param loginName true为登录名已经存在
     * @return
     */
    Boolean checkLoginName(String loginName);

    /**
     * 检查用户下是否有此电子邮件
     * @param loginName
     * @param email
     * @return
     */
    Boolean checkLoginNameByEmail(String loginName, String email);

    /**
     * 发送邮件找回密码
     * @param username
     * @param email
     */
    void sendEmailFindPassword(String username, String email);

    void updatePassword(String key,String password) throws Exception;
}
