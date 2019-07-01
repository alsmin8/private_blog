package gm.practice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gm.practice.mapper.PostMapper;
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
	
}
