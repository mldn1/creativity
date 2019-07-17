package com.yootk.util.upload.util;

import org.csource.common.NameValuePair;
import org.csource.fastdfs.*;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.util.Arrays;

public class FileUpload {
    private static File file;
    private static String fileExt = "png";
    public FileUpload(File file){
        this(file,"png");
    }
    public FileUpload(File file,String fileExt){
        this.file = file;
        this.fileExt = fileExt;
    }
    public String [] Upload() throws Exception {
        //1、如果要进行文件上传，那么需要通过File类设置一个文件的上传路径
        //2、对于文件的上传一定要提供相应的文件后缀
        //3、在使用FastDFS处理的时候，使用了一个专属的配置文件
        ClassPathResource resource = new ClassPathResource("fastdfs.properties");
        //4、如果要进行上传，则需要进行上传的初始化操作，需要通过资源路径进行加载
        ClientGlobal.init(resource.getClassLoader().getResource("fastdfs.properties").getPath());
        //5、创建Tracker客户端处理类
        TrackerClient client = new TrackerClient();
        TrackerServer trackerServer = client.getConnection();  //获取Tracker服务对象
        StorageServer storageServer = null;
        //6、创建一个储存的客户端类对象
        StorageClient storageClient = new StorageClient(trackerServer, storageServer);
        //7、将要上传的内容进行包装
        NameValuePair[] metaList = new NameValuePair[3];   //定义一个数据的集合
        metaList[0] = new NameValuePair("fileName", file.getName());
        metaList[1] = new NameValuePair("fileExtName", fileExt);
        metaList[2] = new NameValuePair("fileLength", String.valueOf(file.length()));
        //8、进行文件上传操作
        String[] uploadFile = storageClient.upload_file(file.getPath(), fileExt, metaList);
        trackerServer.close();
        return uploadFile;
    }
}
