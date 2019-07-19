package com.yootk.oa.util;

import org.apache.commons.io.FilenameUtils;
import org.csource.common.MyException;
import org.csource.common.NameValuePair;
import org.csource.fastdfs.ClientGlobal;
import org.csource.fastdfs.StorageClient1;
import org.csource.fastdfs.TrackerClient;
import org.csource.fastdfs.TrackerServer;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;

public class FileManager {
    private static final long serialVersionUID = -4462272673174266738L;
    private static TrackerClient trackerClient;
    private static TrackerServer trackerServer;
    private static StorageClient1 storageClient1;

    static {
        try {
            //clientGloble读配置文件
            ClassPathResource resource = new ClassPathResource("config/fastdfs.properties");
            System.out.println(resource.getClassLoader().getResource("config/fastdfs.properties").getPath());
            ClientGlobal.init(resource.getClassLoader().getResource("config/fastdfs.properties").getPath());
            trackerClient = new TrackerClient();
            trackerServer = trackerClient.getConnection();

            storageClient1 = new StorageClient1(trackerServer, null);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }
    }

    /**
     * 文件上传
     */
    public static String upload(FastDFSFile fastFile) {
        String path = null;
        try {
            //文件扩展名
            String ext = FilenameUtils.getExtension(fastFile.getName());
            //meta list是表文件的格式
            NameValuePair[] matalist = new NameValuePair[3];
            matalist[0] = new NameValuePair("fileName", fastFile.getName());
            matalist[1] = new NameValuePair("fileExt", ext);
            matalist[2] = new NameValuePair("fileSize", String.valueOf(fastFile.getSize()));
            path = storageClient1.upload_file1(fastFile.getContent(), ext, matalist);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (MyException e) {
            e.printStackTrace();
        }

        return path;
    }


}
