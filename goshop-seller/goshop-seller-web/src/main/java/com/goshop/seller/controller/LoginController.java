package com.goshop.seller.controller;

import com.goshop.common.context.ValidationCodeServlet;
import com.goshop.common.pojo.ResponseStatus;
import com.goshop.common.utils.ResponseMessageUtils;
import com.goshop.common.utils.TokenUtils;
import com.goshop.shiro.service.ShiroConfig;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {
    /**
     * 用户登陆
     */
    @RequestMapping("/login")
    public String login(Model model,HttpServletRequest request,HttpServletResponse response) {
        //如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
        String exceptionClassName = (String) request.getAttribute(ShiroConfig.shiroLoginFailure);
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
            }else if(LockedAccountException.class.getName().equals(exceptionClassName)){
                model.addAttribute("P_EXCEPTION", "账号已被锁定，请与系统管理员联系!");
            }else if(AuthenticationException.class.getName().equals(exceptionClassName)){
                model.addAttribute("P_EXCEPTION", "您没有授权！");
            }else {
                model.addAttribute("P_EXCEPTION", "未知异常！");
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
    @RequestMapping("/refuse")
    public String refuse(){
        return "refuse";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }


    @RequestMapping("/check/captcha")
    @ResponseBody
    public Object captcha(HttpServletRequest request) {
        return ResponseStatus.get(ValidationCodeServlet.isCaptcha(request));
    }

}
