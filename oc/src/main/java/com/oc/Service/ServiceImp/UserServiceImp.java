package com.oc.Service.ServiceImp;


import com.oc.Dao.UserDao;
import com.oc.Domain.User;
import com.oc.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userServiceImp")
public class UserServiceImp implements UserService {
    @Resource(name="userDao")
    UserDao userDao;
  public User findUser(User user)
  {
        System.out.println("service层方法1启动");
        return  userDao.findUser(user);
    }

    @Override
    public void addUser(User user) {
    userDao.addUser(user);
        System.out.println("注册成功2");
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void updatePhoto(String photoImg, String username) {
        System.out.println("service层方法1启动"+photoImg+"------"+username);
        userDao.updatePhoto(photoImg,username);
    }
}
