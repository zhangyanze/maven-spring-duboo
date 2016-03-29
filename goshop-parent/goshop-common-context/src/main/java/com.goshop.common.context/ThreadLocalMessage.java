package com.goshop.common.context;

/**
 * Created by Administrator on 2016/3/28.
 */
public class ThreadLocalMessage {
    private static final ThreadLocal<String> LOCAL_MESSAGE = new ThreadLocal();

    public static void set(String value) {
        LOCAL_MESSAGE.set(value);
    }

    public static String get() {
        String value=LOCAL_MESSAGE.get();
        LOCAL_MESSAGE.remove();
        return value;
    }
}
