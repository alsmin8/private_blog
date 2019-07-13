package gm.practice.mapper;

import java.util.List;

import gm.practice.model.PostBean;
import gm.practice.model.PostTo;

public interface PostMapper {

	public List<PostTo> getPostsList();
	
	public PostTo getNewPost();
	
	public int insertNewPost(PostBean postbean);
	
	public int modifyPost(PostBean postbean);

	public PostTo getOnePost(int post_idx);
	
	public int deletePost(int post_idx);

}
