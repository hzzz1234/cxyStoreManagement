package com.cxy.apptools.web.storemanager.util;




import org.springframework.util.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by songbo on 2016/1/7.
 */
public class FormatConverse {
    public static String ConverseDateFormat(Date date,String formatStr){
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat(formatStr);
        boolean a=date==null;
        String ctime=date==null?"":formatter.format(date);
        System.out.println(a);
        return ctime;
    }
}
