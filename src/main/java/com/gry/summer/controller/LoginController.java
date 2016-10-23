package com.gry.summer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gry.summer.domain.SysUser;
import com.gry.summer.service.UserService;
import com.gry.summer.util.MD5;

@Controller
@RequestMapping("/LoginController")
public class LoginController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/tologin")
	public String toLogin() {
		return "/login.jsp";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request,HttpSession session){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		password = MD5.md5(password);
		SysUser sysUser = userService.getUser(username, password);
		if(sysUser.getId()==null){
			return "/login.jsp";
		}
		session.setAttribute("suser", sysUser);
		return "/index.jsp";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("suser");
		return "/login.jsp";
	}
	@RequestMapping("/customer")
	public String customer() {
		return "/information/customer.jsp";
	}
	
	/**
	 * 得到ModelAndView
	 */
	public ModelAndView getModelAndView(){
		return new ModelAndView();
	}
	
}
