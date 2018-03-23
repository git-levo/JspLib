package com.e1858.building.service;

public interface EmailService {
    /*
     * hisEmail收件人email
     * subject主题（标题）
     * content内容（文本）
     */
    void sendEmail(String hisEmail, String subject, String content);
 
}