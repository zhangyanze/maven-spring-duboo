package com.goshop.portal.service;

/**
 * Created by Administrator on 2016/3/21.
 */
public interface FindPasswordService {
    String getContent(String username);

    int saveFindPassword(String username, String key);
}
