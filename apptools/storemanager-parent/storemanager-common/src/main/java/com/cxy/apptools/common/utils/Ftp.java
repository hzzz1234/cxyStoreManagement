package com.cxy.apptools.common.utils;

/**
 * Created by songbo on 2016/3/20.
 */
import java.io.*;

import sun.net.TelnetInputStream;
import sun.net.TelnetOutputStream;
import sun.net.ftp.FtpClient;
import sun.net.ftp.FtpProtocolException;

/**
 * Java自带的API对FTP的操作
 * @Title:Ftp.java
 * @author: 周玲斌
 */
public class Ftp {
    /**
     * 本地文件名
     */
    private String localfilename;
    /**
     * 远程文件名
     */
    private String remotefilename;
    /**
     * FTP客户端
     */
    private FtpClient ftpClient;

    /**
     * 服务器连接
     * @param ip 服务器IP
     * @param port 服务器端口
     * @param user 用户名
     * @param password 密码
     * @param path 服务器路径
     * @author songbo
     * @date   2016-3-11
     */
    public void connectServer(String ip, int port, String user,
                              String password, String path) {
        try {
            /* ******连接服务器的两种方法*******/
            //第一种方法
//            ftpClient = new FtpClient();
//            ftpClient.openServer(ip, port);
            //第二种方法

            ftpClient = FtpClient.create(ip);
            ftpClient.login(user, password.toCharArray());
            // 设置成2进制传输
            ftpClient.setBinaryType();
           // ftpClient.setsendServer("quote PASV");
            System.out.println("login success!");

            if (path.length() != 0){
                //把远程系统上的目录切换到参数path所指定的目录
                ftpClient.changeDirectory(path);
            }
            ftpClient.setBinaryType();
        } catch (IOException ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }catch (FtpProtocolException e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    /**
     * 关闭连接
     * @author songbo
     * @date   2016-3-11
     */
    public void closeConnect() {
        try {
            ftpClient.close();
            System.out.println("disconnect success");
        } catch (IOException ex) {
            System.out.println("not disconnect");
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }
    /**
     * 上传文件
     * @param localFile 本地文件
     * @param remoteFile 远程文件
     * @author songbo
     * @date   2016-3-11
     */
    public void upload(String localFile, String remoteFile) {
        this.localfilename = localFile;
        this.remotefilename = remoteFile;
        TelnetOutputStream os = null;
        FileInputStream is = null;
        try {
            //将远程文件加入输出流中
            os = (TelnetOutputStream) ftpClient.putFileStream(this.remotefilename);
            //获取本地文件的输入流
            File file_in = new File(this.localfilename);
            is = new FileInputStream(file_in);
            //创建一个缓冲区
            byte[] bytes = new byte[1024];
            int c;
            while ((c = is.read(bytes)) != -1) {
                os.write(bytes, 0, c);
            }
            System.out.println("upload success");
        } catch (IOException ex) {
            System.out.println("not upload");
            ex.printStackTrace();
            throw new RuntimeException(ex);
        } catch (FtpProtocolException e) {
            e.printStackTrace();
        } finally{
            try {
                if(is != null){
                    is.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                try {
                    if(os != null){
                        os.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * 下载文件
     * @param remoteFile 远程文件路径(服务器端)
     * @param localFile 本地文件路径(客户端)
     * @author songbo
     * @date   2016-3-11
     */
    public void download(String remoteFile, String localFile) {
        InputStream is = null;
        FileOutputStream os = null;
        try {
            //获取远程机器上的文件filename，借助TelnetInputStream把该文件传送到本地。
            is = (InputStream) ftpClient.getFileStream(remoteFile);
            File file_in = new File(localFile);
            os = new FileOutputStream(file_in);
            byte[] bytes = new byte[1024];
            int c;
            while ((c = is.read(bytes)) != -1) {
                os.write(bytes, 0, c);
            }
            System.out.println("download success");
        } catch (IOException ex) {
            System.out.println("not download");
            ex.printStackTrace();
            throw new RuntimeException(ex);
        } catch (FtpProtocolException e) {
            e.printStackTrace();
        } finally{
            try {
                if(is != null){
                    is.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                try {
                    if(os != null){
                        os.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
