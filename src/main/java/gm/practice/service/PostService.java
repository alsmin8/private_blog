package gm.practice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gm.practice.mapper.PostMapper;
import gm.practice.model.PostBean;
import gm.practice.model.PostTo;
import lombok.Setter;

@Service
public class PostService {

	@Setter(onMethod_=@Autowired)
	private PostMapper mapper;
	
	public List<PostTo> getListService(){
		
		List<PostTo> list=mapper.getPostsList();
		
		return list;
		
	}
	
	public PostTo getNewPost(){
		
		return mapper.getNewPost();
	}
	
	public void insertPostService(PostBean postbean){
		
		mapper.insertNewPost(postbean);
	
	}
	
	public int updatePostService(PostBean postbean){
		return mapper.modifyPost(postbean);

	}
	
	public PostTo getOnePostService(int post_idx){
		
		return mapper.getOnePost(post_idx);
	}
	
	
	public int deletePostService(int post_idx){
		
		return mapper.deletePost(post_idx);
	}
	
}
