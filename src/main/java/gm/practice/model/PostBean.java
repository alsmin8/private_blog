package gm.practice.model;

import lombok.Data;

@Data
public class PostBean {

	//Bean 서버로 들어오는 거
	
	int post_idx; //게시글 번호
	
	int post_writer_idx; //작성자 번호
	
	String post_password;
	
	String post_title;
	
	String post_contents;
	
	String post_regdate;
	
	int post_hitcount;
	
}
