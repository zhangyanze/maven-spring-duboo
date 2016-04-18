package com.goshop.common.attachment;

import com.goshop.common.utils.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

/**
 * Created by Administrator on 2016/3/24.
 */
public class FastDFSAttachmentImpl implements AttachmentService {
    @Override
    public String upload(MultipartFile multipartFile) throws IOException {
        String type = FileUtils.getFileType(multipartFile.getOriginalFilename()).toLowerCase();
        StringBuffer sb = new StringBuffer();
        //sb.append(filePath);
        sb.append("/");
        sb.append(UUID.randomUUID().toString());
        sb.append(".");
        sb.append(type);
        String fileName  = sb.toString();
        return this.upload(multipartFile.getInputStream(),fileName);
    }

    @Override
    public String upload(InputStream inputStream,String fileName) {
        return null;
    }

    @Override
    public String getPath() {
        return null;
    }

    @Override
    public File download(String id) {
        return null;
    }

    @Override
    public String upload(File file,String type) throws Exception {
        return null;
    }
}
