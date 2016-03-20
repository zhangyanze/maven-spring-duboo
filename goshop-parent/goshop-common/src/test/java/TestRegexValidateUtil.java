import com.goshop.common.utils.RegexValidateUtil;
import org.junit.Assert;
import org.junit.Test;

/**
 * Created by Administrator on 2016/3/19.
 */
public class TestRegexValidateUtil {

    @Test
    public void testCheckNotEmputy(){

       Assert.assertTrue(RegexValidateUtil.checkNotEmputy("")==true);

        Assert.assertTrue(RegexValidateUtil.checkNotEmputy("admin")==false);
    }

    @Test
    public void testCheckLoginUser(){
        Assert.assertTrue(RegexValidateUtil.checkLoginUser(null)==true);
        Assert.assertTrue(RegexValidateUtil.checkLoginUser("")==true);
        Assert.assertTrue(RegexValidateUtil.checkLoginUser("a")==true);
        Assert.assertTrue(RegexValidateUtil.checkLoginUser("ad")==true);
        Assert.assertTrue(RegexValidateUtil.checkLoginUser("gugu")==false);
        Assert.assertTrue(RegexValidateUtil.checkLoginUser("a1234567890")==true);
    }

    @Test
    public void testCheckEmail(){
        Assert.assertTrue(RegexValidateUtil.checkEmail(null)==false);
       Assert.assertTrue(RegexValidateUtil.checkEmail("")==false);
        Assert.assertTrue(RegexValidateUtil.checkEmail("a@")==false);
        Assert.assertTrue(RegexValidateUtil.checkEmail("ad@126")==false);
        Assert.assertTrue(RegexValidateUtil.checkEmail("pzh_gugu@126.com")==true);
    }
}
