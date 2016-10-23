package com.gry.summer.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gry.summer.domain.SysUser;
import com.gry.summer.service.UserService;
import com.gry.summer.util.MD5;
import com.gry.summer.util.UuidUtil;

@Controller
@RequestMapping("/Manager")
public class SupperManagerController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/userManager")
	public String userManager(HttpSession session) {
		return "/manager/user.jsp";
	}
	
	@RequestMapping("/addUser")
	public String addUser(HttpServletRequest request,HttpServletResponse response) {
		String username = request.getParameter("username");
		String password2 = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		String id = UuidUtil.get32UUID();
		String password = MD5.md5(request.getParameter("password"));
		SysUser user = new SysUser(id, nickname, username, password, password2);
		int result = userService.addUser(user);
		if(result>0){
			return "/manager/user.jsp";
		}else{
			response.setHeader("Content-type", "text/html;charset=UTF-8");
			PrintWriter out = null;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			String loginPage = "/LoginController/tologin";
			StringBuilder builder = new StringBuilder();
			builder.append("<script type=\"text/javascript\">");
			builder.append("alert('添加失败！请重试。');");
			builder.append("window.top.location.href='");
			builder.append(loginPage);
			builder.append("';");
			builder.append("</script>");
			out.print(builder.toString());
			return null;
		}
	}
}
