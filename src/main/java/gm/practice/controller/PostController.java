package gm.practice.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import gm.practice.model.PostBean;
import gm.practice.model.PostTo;
import gm.practice.service.PostService;
import lombok.Setter;

@RequestMapping("/blog/*")
@Controller
public class PostController {

	@Setter(onMethod_ = @Autowired)
	PostService service;

	@RequestMapping("/main")
	public void test(Model model) {

		PostTo newPost = service.getNewPost();
		
		List<PostTo> list=service.getListService();
		
		model.addAttribute("list", list);
		
		//System.out.println(list.toString());

		model.addAttribute("newPost", newPost);
		
		

	}
	
	@ResponseBody
	@RequestMapping(value="/getOnePost")
	public PostTo getOnePost(Model model, @RequestParam int post_idx ) {

		
		
		
		PostTo onePost = service.getOnePostService(post_idx);
		
		//System.out.println(onePost.toString());
		
		model.addAttribute("onePost", onePost);
		
		return onePost;
		

	}
	
	
	//포스트 인서트

	@RequestMapping(value = "/postInsert", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public String postInsert(@RequestBody PostBean postbean) {
		
		//System.out.println("포스트 빈 확인:"+postbean.toString());
		service.insertPostService(postbean);

		return "redirect:/blog/main";

	}

	
	@RequestMapping(value = "/postUpdate", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public String postUpdate(@RequestBody PostBean postbean) {
		
		//System.out.println("포스트 빈 확인:"+postbean.toString());
		int test=service.updatePostService(postbean);
		
		//System.out.println(test);
		
		return "/blog/main";
	}
	
	
	
	@RequestMapping(value="/postDelete")
	public String postDelete(@RequestParam int post_idx) {
		
		int test=service.deletePostService(post_idx);
		
		
		
		return "/blog/main";
	}
	
	
	
	
	//에이작스 테스트
	
	@RequestMapping("/practice")
	public String practice(Model model) {

		List<PostTo> list= service.getListService();

		model.addAttribute("list", list);
		
		System.out.println(list);

		return "/blog/practice";

	}
	
	@RequestMapping("/treepractice")
	public void treepractice(Model model) {

		List<PostTo> list=service.getListService();
		
		
		model.addAttribute("list", list);

		

	}
	
	

}