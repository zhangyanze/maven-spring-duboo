package com.goshop.shiro.service;

import com.goshop.common.context.ValidationCodeServlet;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/3/22.
 */
public class CustomFormAuthenticationFilter extends FormAuthenticationFilter {

    //原FormAuthenticationFilter的认证方法
    @Override
    protected boolean onAccessDenied(ServletRequest request,
                                     ServletResponse response) throws Exception {
        //在这里进行验证码的校验
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        if(!ValidationCodeServlet.isCaptcha(httpServletRequest)){
            //如果校验失败，将验证码错误失败信息，通过shiroLoginFailure设置到request中
            httpServletRequest.setAttribute("shiroLoginFailure", "randomCodeError");
            //拒绝访问，不再校验账号和密码
            return true;
        }
        return super.onAccessDenied(request, response);
    }

}
