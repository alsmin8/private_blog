package gm.practice.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import gm.practice.model.UserTo;
import gm.practice.service.PostService;
import gm.practice.service.UserService;
import lombok.Setter;

@RequestMapping("/blog/*")
@Controller
public class UserController {

	@Setter(onMethod_ = @Autowired)
	UserService service;

	@RequestMapping(value="/login")
	public void login(Model model) {



	}

	@RequestMapping(value="/loginAction")
	public String loginAction(UserTo user, HttpSession httpSession, Model model) throws Exception{
		
		System.out.println("유저:"+user.toString());
	
		
		UserTo UserTo=service.loginUserService(user);
		
		System.out.println("[유저스트링]"+UserTo.toString());
		
		if (UserTo.getUser_id().equals("") || UserTo.getUser_password().equals("")) {
			return ("/blog/login");
		}
		
		System.out.println("USER:"+UserTo);
		
		model.addAttribute("user", UserTo);
		
		return ("/blog/main");

	}
	
	

}