package com.guozhilin.shiro;


import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;


import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class UserRealm extends AuthorizingRealm {


    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    /**
     * 登录时调用
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("登录认证");
        String username= (String) authenticationToken.getPrincipal();
        System.out.println("==============登录认证================"+username);
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(username,"4280d89a5a03f812751f504cc10ee8a5", getName());
        //authenticationInfo.setCredentialsSalt(ByteSource.Util.bytes(username+user.getSalt()));
        return authenticationInfo;
    }
    public static void main(String[] args) throws SQLException {
//        Random ran = new Random();
//        //int randomNum = ran.nextInt(1000000000);
//        //System.out.println(randomNum);
//        Md5Hash md5 = new Md5Hash("e10adc3949ba59abbe56e057f20f883e");
//        System.out.println("md5:"+md5.toString());
//        ApplicationContext ac = new FileSystemXmlApplicationContext();
//
//        DruidDataSource druidDataSource = (DruidDataSource) ac.getBean("dataSource");
//        Connection con = druidDataSource.getConnection();
//        System.out.println(con);
        Map<String, String> map = new HashMap<String, String>();
        String algorithmName = "md5";
        String salt1 = "sunshuguo";
        String salt2 = new SecureRandomNumberGenerator().nextBytes().toHex();
        int hashIterations = 2;
        SimpleHash hash = new SimpleHash(algorithmName, "123456", salt1+salt2, hashIterations);
        System.out.println(hash.toHex());
        System.out.print(salt2);
    }
}
