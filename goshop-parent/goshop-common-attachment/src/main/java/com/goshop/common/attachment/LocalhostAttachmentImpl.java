package com.goshop.common.attachment;

import com.goshop.common.utils.DateTimeUtils;
import com.goshop.common.utils.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Administrator on 2016/3/24.
 */
public class LocalhostAttachmentImpl implements AttachmentService {

    @Value("${FILE_PATH}")
    private String filePath;

    @Override
    public String upload(MultipartFile multipartFile) throws IOException {
        String type = FileUtils.getFileType(multipartFile.getOriginalFilename()).toLowerCase();
        StringBuffer sb = new StringBuffer();
        sb.append("/");
        sb.append(DateTimeUtils.format(new Date(),"yyyy-MM-dd"));
        sb.append("/");
        sb.append(UUID.randomUUID().toString());
        sb.append(".");
        sb.append(type);
        String fileName  = sb.toString();
        return this.upload(multipartFile.getInputStream(),fileName);
    }

    @Override
    public String upload(InputStream inputStream,String fileName) throws IOException {
        FileUtils.saveFile(inputStream,filePath+fileName);
        return fileName;
    }

    @Override
    public String getPath(String id) {
        StringBuffer sb = new StringBuffer();
        sb.append(filePath);
        sb.append("/");
        sb.append(id);
        return sb.toString();
    }

    @Override
    public File download(String id) {
        String filePath=this.getPath(id);
        return new File(filePath);
    }
}
