package com.goshop.manager.controller;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    private static String shiroLoginFailure="shiroLoginFailure";
    /**
     * 用户登陆
     */
    @RequestMapping
    public String login(Model model,HttpServletRequest request) {
        //如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
        String exceptionClassName = (String) request.getAttribute(shiroLoginFailure);
        //根据shiro返回的异常类路径判断，抛出指定异常信息
        if(StringUtils.hasText(exceptionClassName)){
            if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
                //最终会抛给异常处理器
                model.addAttribute("P_EXCEPTION","账号不存在");
            } else if (IncorrectCredentialsException.class.getName().equals(
                    exceptionClassName)) {
                model.addAttribute("P_EXCEPTION","用户名/密码错误");
            } else if("randomCodeError".equals(exceptionClassName)){
                model.addAttribute("P_EXCEPTION","验证码错误");
            }else {
                //throw new Exception("");//最终在异常处理器生成未知错误
            }
        }
        //此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
        //登陆失败还到login页面
        return "login";
    }

    /**
     * 拒绝访问
     * @return
     */
    @RequestMapping("refuse")
    public String refuse(){
        return "refuse";
    }
}
