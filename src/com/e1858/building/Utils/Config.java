package com.e1858.building.Utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Config {
    private static Properties props;
    static{
        loadProps();
    }

    synchronized static private void loadProps(){
        System.out.println("开始加载properties文件内容.......");
        props = new Properties();
        InputStream in = null;
        try {
            //第一种，通过类加载器进行获取properties文件流
            in = Config.class.getClassLoader().getResourceAsStream("application.properties");
            //第二种，通过类进行获取properties文件流
            //in = Config.class.getResourceAsStream("/jdbc.properties");
            props.load(in);
        } catch (FileNotFoundException e) {
            System.out.println("application.properties文件未找到");
        } catch (IOException e) {
            System.out.println("出现IOException");
        } finally {
            try {
                if(null != in) {
                    in.close();
                }
            } catch (IOException e) {
                System.out.println("application.properties文件流关闭出现异常");
            }
        }
        System.out.println("加载properties文件内容完成...........");
        System.out.println("properties文件内容：" + props);
    }

    public static String getConfigValue(String key){
        if(null == props) {
            loadProps();
        }
        return props.getProperty(key);
    }

    public static String getConfigValue(String key, String defaultValue) {
        if(null == props) {
            loadProps();
        }
        return props.getProperty(key, defaultValue);
    }
}