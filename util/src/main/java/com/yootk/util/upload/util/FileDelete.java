package com.yootk.util.upload.util;

import org.csource.fastdfs.*;
import org.springframework.core.io.ClassPathResource;


public class FileDelete {
    public static void Upload(String fastFdsName) throws Exception {
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
        StorageClient1 storageClient = new StorageClient1(trackerServer, storageServer);
        storageClient.delete_file1("group1/"+fastFdsName);
        trackerServer.close();
    }
}
