package com.cxy.apptools;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import com.cxy.apptools.common.utils.Ftp;
/**
 * Unit test for simple App.
 */
public class AppTest 
    extends TestCase
{
    /**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public AppTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( AppTest.class );
    }

    /**
     * Rigourous Test :-)
     */
    public void testApp()
    {
        assertTrue( true );
    }


    public void testUpAndDownLoad(){

        Ftp fu = new Ftp();
        /*
         * 使用默认的端口号、用户名、密码以及根目录连接FTP服务器
         */
        fu.connectServer("101.200.81.55", 21, "songbo", "songbo", "/home/songbo/");



        String localfile = "E:/号码.txt";
        String remotefile = "/home/songbo/2.txt";
        //上传
        fu.upload(localfile, remotefile);

//        String filepath[] = { "/home/songbo/1.txt", "/home/songbo/2.txt"};
//        String localfilepath[] = { "E:/下载1.txt","E:/下载2.txt"};
//        //下载
//        for (int i = 0; i < filepath.length; i++) {
//            fu.download(filepath[i], localfilepath[i]);
//        }
        fu.closeConnect();
    }

}
