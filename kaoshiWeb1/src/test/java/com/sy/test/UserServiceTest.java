package com.sy.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.sy.model.User;
import com.sy.service.UserService;


public class UserServiceTest extends SpringTestCase {
	
	@Autowired  
    private UserService userService; 

    @Test  
    public void selectUserByIdTest(){  
        User user = userService.selectUserById(2);  
        System.out.println(user.getUserName() + ":" + user.getUserPassword());
    }  

}
