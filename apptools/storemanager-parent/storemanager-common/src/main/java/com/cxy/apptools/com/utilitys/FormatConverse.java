package com.cxy.apptools.com.utilitys;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by songbo on 2016/1/7.
 */
public class FormatConverse {
    public static String ConverseDateFormat(Date date,String formatStr){
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat(formatStr);
        String ctime = formatter.format(date);
        return ctime;
    }
}
