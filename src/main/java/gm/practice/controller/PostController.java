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

		// System.out.println("test:"+service.getListService().toString());

		// System.out.println("test2:"+service.getNewPost().toString());

		PostTo newPost = service.getNewPost();
		
		List<PostTo> list=service.getListService();
		
		model.addAttribute("list", list);
		
		System.out.println(list.toString());

		model.addAttribute("newPost", newPost);
		
		

	}
	
	@RequestMapping("/getOnePost")
	public void getOnePost(Model model, @RequestParam int post_idx) {

		PostTo onePost = service.getOnePostService();		

		model.addAttribute("onePost", onePost);
		
		

	}
	
	
	//����Ʈ �μ�Ʈ

	@RequestMapping(value = "/postInsert", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public String postInsert(@RequestBody PostBean postbean) {
		
		System.out.println("����Ʈ �� Ȯ��:"+postbean.toString());
		service.insertPostService(postbean);

		return "redirect:/blog/main";

	}

	
	@RequestMapping(value = "/postUpdate", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public String postUpdate(@RequestBody PostBean postbean) {
		
		System.out.println("����Ʈ �� Ȯ��:"+postbean.toString());
		service.updatePostService(postbean);
		
		return "redirect:/blog/main";

	}
	
	
	
	
	
	
	//�����۽� �׽�Ʈ
	
	@RequestMapping("/practice")
	public String practice(Model model) {

		List<PostTo> list= service.getListService();

		model.addAttribute("list", list);
		
		System.out.println(list);

		return "/blog/practice";

	}
	
	

}