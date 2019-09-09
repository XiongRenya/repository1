package com.oc.Dao;

import com.oc.Domain.User;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import javax.annotation.Resources;
import java.io.InputStream;

public class test {
    @Test
    public void demo()throws  Exception{
        InputStream in= org.apache.ibatis.io.Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sf=new SqlSessionFactoryBuilder().build(in);
        SqlSession session=sf.openSession();
        UserDao userDao=session.getMapper(UserDao.class);
        User user=new User();
        user.setUsername("cxk");
        user.setPassword("1234");
         User user1=userDao.findUser(user);
        System.out.println("查询成功"+user1);
     /*   userDao.updatePhoto("1234","cxk");
        session.commit();*/
     //  System.out.println("成功111");

    }

}
