package com.e1858.building.msg;

import com.e1858.building.Utils.EmailServiceFactory;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class EmailTest {
    //创建一个线程池，可装载大概3个线程任务的
    private static ExecutorService executorService = Executors.newFixedThreadPool(3);
 
    // 收件人邮箱（替换为自己知道的有效邮箱）
    public static String receiveMailAccount = "";
 
    public static void main(String[] args)  {
        //这种写法详情请去参考lambda表达式
//        executorService.submit(new Runnable() {
//            @Override
//            public void run() {
                EmailServiceFactory.getEmailService().sendEmail(receiveMailAccount, "BSS系统工单", "");
//            }
//        });
    }
}