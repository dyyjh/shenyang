package com.sy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sy.model.User;
import com.sy.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String userid = request.getParameter("userid");
		String password = request.getParameter("userPass");
		if (userid==null||userid.isEmpty()||password==null||password.isEmpty()) {
			request.setAttribute("tipMessage", "error.001");
			mv.setViewName("index");
			return mv;
		}
		request.setAttribute("userid", userid);
		request.setAttribute("password", password);
		User user = userService.selectUserById(Integer.valueOf(userid));
		if (user==null) {
			request.setAttribute("tipMessage", "error.002");
			mv.setViewName("index");
			return mv;
		}
		
		//用户密码正确
		User userQ = new User();
		userQ.setUserId(Integer.valueOf(userid));
		userQ.setUserPassword(password);
		List<User> r = userService.selectUserInfo(userQ);
		if (r!=null) {
			request.setAttribute("user", r.get(0));
			session.setAttribute("sessionUser", r.get(0));
			mv.setViewName("loginSucess");
		}else {
			request.setAttribute("tipMessage", "error.003");
			mv.setViewName("index");
		}
		return mv;
	}
}
