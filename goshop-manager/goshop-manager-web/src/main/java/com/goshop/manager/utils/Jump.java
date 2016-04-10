package com.goshop.manager.utils;

import com.goshop.common.context.MessageInfo;
import com.goshop.common.context.ThreadLocalMessage;

/**
 * Created by Administrator on 2016/3/22.
 */
public class Jump {

    public static String get(String returnUrl,String message){
        MessageInfo info = new MessageInfo();
        info.setMessage(message);
        info.setReturnUrl(returnUrl);
        ThreadLocalMessage.set(info);
        StringBuffer sb = new StringBuffer("forward:/msg");
        return sb.toString();
    }
}
