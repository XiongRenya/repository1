package com.oc.Service;

import com.oc.Domain.User;

public interface UserService {
    User findUser(User user);
    void addUser(User user);
     void updateUser(User user);
    void updatePhoto(String photo,String username);
}
