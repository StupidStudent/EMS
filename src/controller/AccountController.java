package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;

import service.AccountService;
import util.MD5;

@Controller
public class AccountController
{
	@Resource
	private AccountService accountService;

	@RequestMapping("login")
	public String login(HttpServletRequest request)
	{
		return "login";
	}
	
	@RequestMapping("logout")
	public String logout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.removeAttribute("password");
		session.removeAttribute("kind");
		return "login";
	}
	
	@RequestMapping("loginCheck")
	public String loginCheck(HttpServletRequest request)
	{
		User user = accountService.getUser(Integer.valueOf(request
				.getParameter("username")));
		String password = request.getParameter("password");
		String message = "";
		if (null == user)
		{
			message = "该用户不存在！";
		} else if (!user.getPassword().equals(password))
		{
			message = "密码错误！";
		}
		else
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", user.getUserId());
			session.setAttribute("password", password);
			session.setAttribute("kind", user.getKind());
			return "index";
		}
		request.setAttribute("message", message);
		return "login";
	}
}
