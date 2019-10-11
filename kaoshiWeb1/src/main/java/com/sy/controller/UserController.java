package com.sy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.QEncoderStream;
import com.sy.form.QueryUserForm;
import com.sy.model.User;
import com.sy.service.UserService;


@Controller
public class UserController {
	@Autowired
	public UserService userService; 
	
	
	@RequestMapping("/")     
    public ModelAndView getIndex(){      
        ModelAndView mav = new ModelAndView("index"); 
        User user = userService.selectUserById(1); 
        mav.addObject("user", user);  
        return mav; 
    }    

	@RequestMapping("loginUserPage")
	public ModelAndView loginUserPage() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("userManager/user-list");
		
		return mv;
	}

	
	@RequestMapping("queryUserInfoList" )
	public ModelAndView queryUserInfoList(HttpServletRequest req,HttpServletResponse res){
		List<User> userList = new ArrayList();
		ModelAndView mv = new ModelAndView();
		String userName = req.getParameter("userName");
		User user = new User();
		user.setUserName(userName);
		userList = userService.selectUserInfo(user);
		req.setAttribute("userList", userList);
		req.setAttribute("userName", userName);
		String msg = req.getParameter("msg");
		req.setAttribute("msg", msg);

		mv.setViewName("userManager/user-list");
		return mv;
	}
	
	@RequestMapping("queryUserInfoListAjax" )
	public void queryUserInfoListAjax(HttpServletRequest req,HttpServletResponse res,QueryUserForm form){
		List<User> userList = new ArrayList();
		String userName = form.getUserName();
		User user = new User();
		user.setUserName(userName);
		userList = userService.selectUserInfo(user);
		res.setContentType("type=text/html;charset=UTF-8");
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("userList", userList);
		//paramMap.put("tempList", userList);

		try {
			//res.getWriter().print("123");
			
			Object O = JSONArray.toJSON(paramMap);
			//System.out.println("************"+JSON.toJSONString(paramMap));
			//res.getWriter().print(JSON.toJSONString(paramMap));
			res.getWriter().print(O);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	
	@RequestMapping("insertUserPage")
	public ModelAndView insertUserPage(HttpServletRequest req,HttpServletResponse res,QueryUserForm form) {
		ModelAndView mv = new ModelAndView();
		String nameHide = form.getNameHide();
		req.setAttribute("nameHide", nameHide);
		mv.setViewName("userManager/user-add");
		return mv;
	}
	@RequestMapping("updateUserPage")
	public ModelAndView updateUserPage(HttpServletRequest req,HttpServletResponse res,QueryUserForm form) {
		ModelAndView mv = new ModelAndView();
		//String userId = form.getCheckName()[0];
		String userId = form.getUserId().toString();
		
		User us = userService.selectUserById(Integer.valueOf(userId));
		req.setAttribute("userEo", us);
		mv.setViewName("userManager/user-update");
		return mv;
	}
	
	@RequestMapping("updateUser")
	public ModelAndView updateUser(HttpServletRequest req,HttpServletResponse res,QueryUserForm form) {
		ModelAndView mv = new ModelAndView();
		User user = new User();
		user.setSex(form.getSex());
		user.setUserId(Integer.valueOf(form.getUserId()));
		user.setUserName(form.getUserName());
		user.setUserPassword(form.getUserPassword());
		userService.updateUser(user);
		mv.setViewName("redirect:/queryUserInfoList");
		return mv;
	}
	
	
	
	
	@RequestMapping("insertUser")
	public ModelAndView insertUser(HttpServletRequest req,HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		String nameHide = req.getParameter("nameHide");
		req.setAttribute("userName", nameHide);
		String userId = req.getParameter("userId");
		String userName = req.getParameter("userName");
		String userPassword = req.getParameter("userPassword");
		String sex = req.getParameter("sex");
		User user = new User();
		user.setUserId(Integer.valueOf(userId));
		user.setSex(sex);
		user.setUserName(userName);
		user.setUserPassword(userPassword);
		userService.insertUser(user);
		
		UUID.randomUUID().toString();
		//mv.setViewName("redirect:/queryUserInfoList?"+"&userName="+nameHide);
		mv.setViewName("redirect:/queryUserInfoList?"+"&userName="+nameHide);

		return mv;
	}
	
	@RequestMapping("deleteUserBatch" )
	public ModelAndView deleteUserBatch(HttpServletRequest req,HttpServletResponse res,QueryUserForm form) {
		ModelAndView mv = new ModelAndView();
		String[] checkName = form.getCheckName();
		List<String> userNameList = Arrays.asList(checkName);
		//userService.deleteUserBatch(userNameList);
		//String nameHide = form.getNameHide();
		// 重定向传递参数实体
		ModelMap mmap = new ModelMap();
		mmap.addAttribute("msg","001" );
		mv.addAllObjects(mmap);
		mv.setViewName("redirect:/queryUserInfoList?"+"&userName="+form.getUserName());
		return mv;
	}
	
	

	
	
}
