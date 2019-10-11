package com.sy.service;

import java.util.List;

import com.sy.model.User;

public interface UserService {
	
    User selectUserById(Integer userId);  

    List<User> selectUserInfo(User user);
    
    void insertUser(User user);
    
    void deleteUserBatch(List<String> userName);
    
    void updateUser(User user);


}
