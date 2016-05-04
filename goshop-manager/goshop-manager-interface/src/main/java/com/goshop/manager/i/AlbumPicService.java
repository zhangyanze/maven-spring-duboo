package com.goshop.manager.i;

import com.goshop.manager.pojo.AlbumPic;

/**
 * Created by Administrator on 2016/5/4.
 */
public interface AlbumPicService {
    AlbumPic save(Long userId,Integer aclassId, String imagePath, Long size, String name, String originalFilename,String apicSpec);
}
