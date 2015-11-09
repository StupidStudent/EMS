package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.AccountService;
import util.MD5;
import entity.Account;

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
		Account account = accountService.getUser(Integer.valueOf(request
				.getParameter("username")));
		String password = request.getParameter("password");
		String message = "";
		if (null == account)
		{
			message = "该用户不存在！";
		} else if (!account.getPassword().equals(MD5.MD5(password)))
		{
			message = "密码错误！";
		}
		else
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", account.getUserId());
			session.setAttribute("password", password);
			session.setAttribute("kind", account.getKind());
			return "index";
		}
		request.setAttribute("message", message);
		return "login";
	}
}
