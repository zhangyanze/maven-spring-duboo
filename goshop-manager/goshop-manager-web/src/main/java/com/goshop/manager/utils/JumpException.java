package com.goshop.manager.utils;

/**
 * Created by Administrator on 2016/3/22.
 */
public class JumpException {

    public static String get(String returnUrl,String message){
        StringBuffer sb = new StringBuffer("forward:/exc/jump?");
        sb.append("message=");
        sb.append(message);
        sb.append("&returnUrl=");
        sb.append(returnUrl);
        return sb.toString();
    }
}
