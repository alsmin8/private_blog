package gm.practice.controller;

import java.io.Console;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import gm.practice.model.PostTo;
import gm.practice.service.PostService;
import lombok.Setter;


@RequestMapping("/blog/*")
@Controller
public class PostController {

	@Setter(onMethod_=@Autowired)
	PostService service;
	
	@RequestMapping("/main")
	public void test(Model model){
		
		//System.out.println("test:"+service.getListService().toString());
	
		//System.out.println("test2:"+service.getNewPost().toString());
	
		PostTo newPost=service.getNewPost();
		
		model.addAttribute("newPost", newPost);
		
	}
	
}
