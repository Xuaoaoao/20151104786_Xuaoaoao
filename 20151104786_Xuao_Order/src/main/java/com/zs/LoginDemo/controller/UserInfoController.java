package com.zs.LoginDemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zs.LoginDemo.service.IUserInfoService;

@Controller
@RequestMapping("/UserInfoController")
public class UserInfoController {
	@Autowired
	private IUserInfoService userInfoService;


	
	@RequestMapping(value ="/UserLogin", method = RequestMethod.POST)
	public String login(String username, String password, Model model) {
		if(username == null || password == null || "".equals(username) || "".equals(password)) {
			model.addAttribute("msg", "请将信息填全");
			return "login";
		}
		if(userInfoService.login(username, password)) {
			model.addAttribute("username", username);
			return "success";
		} else {
			model.addAttribute("msg", "账号或密码错误，请重新输入");
			return "login";
		}
	}
}
