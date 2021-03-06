package com.journey.abc.service.impl;


import com.journey.abc.service.FileService;
import com.journey.abc.util.FtpUtils;
import com.journey.abc.util.IDUtils;
import com.journey.abc.util.PropKit;
import org.joda.time.DateTime;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

@Service
public class FileServiceImpl implements FileService {
    @Override
    public Map<String, Object> uploadImages(MultipartFile upfile) {
        Map<String, Object> map = new HashMap<>();
        String name = "ftp.properties";
        String host = PropKit.use(name).get("ftp.address");
        int port = PropKit.use(name).getInt("ftp.port");
        String username = PropKit.use(name).get("ftp.username");
        String password = PropKit.use(name).get("ftp.password");
        String basePath = PropKit.use(name).get("ftp.basePath");
        //创建文件路径：基础路径+文件路径+文件名+扩展名
        String filePath = new DateTime().toString("/yyyy/MM/dd");
        //文件名包括扩展名
        String originalFilename = upfile.getOriginalFilename();
       //扩展名
        String fileType = originalFilename.substring(originalFilename.lastIndexOf("."));
        String newName = IDUtils.genImageName() + fileType;
        InputStream inputStream = null;
        try {
            inputStream = upfile.getInputStream();
        } catch (Exception e) {
            e.printStackTrace();

        }
        boolean b = FtpUtils.uploadFile(host, port, username, password, basePath, filePath, newName, inputStream);
        System.out.println("+++++++++++++++++++++++++++++++++++++++" + b);
        if (b) {
            map.clear();
            map.put("state", "SUCCESS");
            map.put("title", newName);
            map.put("original", originalFilename);
            map.put("type", fileType);
            map.put("url", filePath + "/" + newName);
            map.put("size", upfile.getSize());
        }
        return map;
    }
}
