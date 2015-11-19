package com.cxy.apptools.persistence.storemanager.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * Created by Administrator on 2015/11/19.
 */
public class BaseMapperTest {

    protected SqlSession session = null;

    public void init() throws Exception {
        InputStream is = Resources.getResourceAsStream("mybatis_config.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
        session = sqlSessionFactory.openSession();
    }

    public void close() throws Exception {
        if(null != session){
            session.close();
        }
    }

//    @Test
//    public void testSelectByPrimaryKey() throws Exception {
//        CxycurrencyMapper cxycurrencyMapper = session.getMapper(CxycurrencyMapper.class);
//        List<Cxycurrency> list = cxycurrencyMapper.selectAllValues();
//        for(Cxycurrency c : list){
//            System.out.println(c.toString());
//        }
//    }

}
