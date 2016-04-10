package com.goshop.common.context;

/**
 * Created by Administrator on 2016/3/28.
 */
public class ThreadLocalMessage {
    private static final ThreadLocal<MessageInfo> LOCAL_MESSAGE = new ThreadLocal();

    public static void set(MessageInfo value) {
        LOCAL_MESSAGE.set(value);
    }

    public static MessageInfo get() {
        MessageInfo value=LOCAL_MESSAGE.get();
        LOCAL_MESSAGE.remove();
        return value;
    }
}
