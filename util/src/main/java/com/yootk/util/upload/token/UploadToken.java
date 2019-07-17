package com.yootk.util.upload.token;

import org.csource.fastdfs.*;
import org.springframework.core.io.ClassPathResource;



public class UploadToken {
    public static String accessBuffer(String[] fdfsFile){
        //2、根据fastdfs.properties文件进行配置初始化
        ClassPathResource resource = new ClassPathResource("fastdfs.properties");
        try {
            ClientGlobal.init(resource.getClassLoader().getResource("fastdfs.properties").getPath());
            //3、创建Tracker客户端操作对象
            TrackerClient client = new TrackerClient();
            TrackerServer trackerServer = client.getConnection();
            int ts = (int) (System.currentTimeMillis() / 1000);
            //5、拼凑出要进行访问的页面路径
            StringBuffer accessBuffer = new StringBuffer();
            accessBuffer.append("http://");
            accessBuffer.append(trackerServer.getInetSocketAddress().getHostString());
            accessBuffer.append("/" + fdfsFile[0] + "/").append(fdfsFile[1]);
            accessBuffer.append("?token=").append(ProtoCommon.getToken(fdfsFile[1], ts, ClientGlobal.g_secret_key));
            accessBuffer.append("&ts=").append(ts);
            return String.valueOf(accessBuffer);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
