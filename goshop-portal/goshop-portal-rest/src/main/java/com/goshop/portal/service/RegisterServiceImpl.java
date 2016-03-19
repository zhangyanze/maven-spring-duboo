package com.goshop.portal.service;

import com.goshop.common.utils.RegexValidateUtil;
import com.goshop.manager.mapper.MemberMapper;
import com.goshop.manager.mapper.UserMapper;
import com.goshop.manager.pojo.Member;
import com.goshop.manager.pojo.User;
import com.goshop.portal.i.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    MemberMapper memberMapper;

    @Autowired
    UserMapper userMapper;

    @Override
    public int saveMember(Member member) {
        //判断用户名是否符合规范
        Assert.isTrue(RegexValidateUtil.checkLoginUser(member.getLoginName())==false,"登录名不能为空，并且在字母开头2~9为数字或字母的组合！");
        //判断登录名是否重复
        Assert.isTrue(!this.checkLoginName(member.getLoginName()), "登录名已经存在！");

        return 1/*memberMapper.insert(member)*/;
    }

    @Override
    public boolean checkLoginName(String loginName) {
        int count=userMapper.findByLoginNameCount(loginName);
        return count>0;
    }
}
