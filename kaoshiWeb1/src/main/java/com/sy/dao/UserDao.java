package com.sy.dao;

import java.util.List;

import com.sy.model.User;

public interface UserDao {
	 /**
     * @param userId
     * @return User
     */
    public User selectUserById(Integer userId);  
    
    public List<User> selectUserInfo(User user);
    
    void insertUser(User user);

    void deleteUserBatch(List<String> userName);
    
    void updateUser(User user);


}
