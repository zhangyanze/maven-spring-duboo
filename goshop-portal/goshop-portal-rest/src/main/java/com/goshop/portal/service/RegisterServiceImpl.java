package com.goshop.portal.service;

import com.goshop.common.exception.PageException;
import com.goshop.common.utils.RandomUtils;
import com.goshop.common.utils.RegexValidateUtil;
import com.goshop.manager.mapper.MemberMapper;
import com.goshop.manager.mapper.UserMapper;
import com.goshop.manager.pojo.Member;
import com.goshop.manager.pojo.User;
import com.goshop.portal.i.RegisterService;
import com.goshop.shiro.service.PasswordService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import java.math.BigDecimal;
import java.util.Date;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    MemberMapper memberMapper;

    @Autowired
    UserMapper userMapper;

    @Autowired
    PasswordService passwordService;

    @Override
    public User saveMember(Member member,User user) {
        //判断用户名是否符合规范
        Assert.isTrue(RegexValidateUtil.checkLoginUser(user.getLoginName())==false,"登录名不能为空，并且在字母开头2~9为数字或字母的组合！");
        //判断登录名是否重复
        Assert.isTrue(this.checkLoginName(user.getLoginName()), "登录名已经存在！");
        //判断邮件是否符合规范
        Assert.isTrue(RegexValidateUtil.checkEmail(member.getMemberEmail()),"邮件填写错误！");
        //判断邮件是否重复
        Assert.isTrue(this.checkEmail(member.getMemberEmail()), "此邮件已经注册！");
        //验证密码格式
        Assert.isTrue(RegexValidateUtil.checkPassword(user.getPassword()), "以字母开头，长度在6~18之间，只能包含字符、数字和下划线！");
        //密码加密、设置盐值
        user=this.passWordUser(user);
        user=this.setDefaultUser(user);
        userMapper.insert(user);
        member=this.setDefaultMember(member,user.getId());
        memberMapper.insert(member);
        return user;

    }

    @Override
    public boolean checkEmail(String memberEmail) {
        int count=memberMapper.findByMemberEmailCount(memberEmail);
        if(count>0){
            return false;
        }
        return true;
    }

    @Override
    public boolean checkLoginName(String loginName) {
        int count=userMapper.findByLoginNameCount(loginName);
        if(count>0){
            return false;
        }
        return true;
    }

    /**
     * 将密码加密
     * @param user
     * @return
     */
    private  User passWordUser(User user){

        if(StringUtils.hasText(user.getPassword())){
            String salt= RandomUtils.generateString(5);
            user.setPassword(passwordService.encryptPassword(user.getPassword(),salt));
            user.setSalt(salt);
        }
        return user;
    }

    public User setDefaultUser(User user) {
        user.setUpcreated(new Date());
        user.setCreated(new Date());
        user.setType(1);
        user.setEnable(1);
        return user;
    }

    public Member setDefaultMember(Member member,Long userId) {
        member.setUserId(userId);
        member.setMemberTime(new Date());
        //是否允许举报(1可以/2不可以)
        member.setInformAllow(true);
        //会员是否有购买权限 1为开启 0为关闭
        member.setIsBuy(true);
        //会员是否有咨询和发送站内信的权限 1为开启 0为关闭
        member.setIsAllowtalk(true);
        //会员的开启状态 1为开启 0为关闭
        member.setMemberState(true);
        //会员积分
        member.setMemberPoints(0);
        //预存款可用金额
        member.setAvailablePredeposit(new BigDecimal(0));
        //预存款冻结金额
        member.setFreezePredeposit(new BigDecimal(0));
        //会员信用
        member.setMemberCredit(0);
        return member;
    }
}
