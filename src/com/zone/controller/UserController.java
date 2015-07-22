package com.zone.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zone.entity.User;
import com.zone.service.UserService;
import com.zone.util.MD5;


@Controller
public class UserController {
	
	@Resource
	private UserService userService;
	
	/**
	 * 注册页面
	 * @param request
	 * @return
	 */
	@RequestMapping("/register")
	public String register(HttpServletRequest request)
	{
		return "register";
	}
	
	@RequestMapping("/registerSubmit")
	public String registerSubmit(HttpServletRequest request)
	{
		User user  = new User();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		user.setUsername(username);
		user.setPassword(MD5.MD5(password));
		userService.save(user);
		
		HttpSession session = request.getSession();	
		session.setAttribute("username", username);	//注册成功自动登录
		session.setAttribute("password", password);

		return "redirect:/main";
	}
}