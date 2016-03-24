package com.goshop.manager.mapper;

import com.goshop.manager.pojo.FindPassword;

public interface FindPasswordMapper {
    int insert(FindPassword record);

    int insertSelective(FindPassword record);

    /**
     * 删除过期
     */
    void deleteInvalid();

    /**
     * 通过编码查找用户名
     * @param key
     * @return
     */
    String findByKey(String key);

    /**
     * 删除此链接
     * @param key
     * @return
     */
    int delete(String key);
}