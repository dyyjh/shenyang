package com.sy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.UserDao;
import com.sy.model.User;
import com.sy.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public User selectUserById(Integer userId) {
		// TODO Auto-generated method stub
		
		return userDao.selectUserById(userId);  
	}

	@Override
	public List<User> selectUserInfo(User user) {
		// TODO Auto-generated method stub
		return userDao.selectUserInfo(user);
	}

	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userDao.insertUser(user);
	}

	@Override
	public void deleteUserBatch(List<String> list) {
		// TODO Auto-generated method stub
		userDao.deleteUserBatch(list);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDao.updateUser(user);
	}
	
	

}
