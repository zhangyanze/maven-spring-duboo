package com.goshop.portal.service;

import com.goshop.common.email.SimpleMailSender;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;

@Service
public class EMailServiceImpl implements EMailService {

    @Value("${EMAIL_ADDRESS}")
    private String eMailAddress;

    @Value("${EMAIL_PASSWORD}")
    private String eMailPassword;


    @Override
    public void send(String email,String title, String emailContent) {
        SimpleMailSender sms = new SimpleMailSender(eMailAddress,eMailPassword);
        try {
            sms.send(email,title,emailContent);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
