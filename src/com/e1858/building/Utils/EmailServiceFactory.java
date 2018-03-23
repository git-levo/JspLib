package com.e1858.building.Utils;

import com.e1858.building.service.EmailService;
import com.e1858.building.service.impl.EmailServiceImpl;

public class EmailServiceFactory {
 
    public static EmailService getEmailService(){
        return new EmailServiceImpl();
    }
}