import com.goshop.common.email.SimpleMailSender;
import org.junit.Ignore;
import org.junit.Test;

import javax.mail.MessagingException;

/**
 * Created by Administrator on 2016/3/21.
 */
public class TestMail {


    @Test
    @Ignore
    public void send(){

        SimpleMailSender sms = new SimpleMailSender("pzh_goshop@126.com","pzh1234567");
        try {
            sms.send("46140184@qq.com","测试邮件","你好sms");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
