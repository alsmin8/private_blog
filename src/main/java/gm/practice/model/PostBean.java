package gm.practice.model;

import lombok.Data;

@Data
public class PostBean {

	//Bean ������ ������ ��
	
	int post_idx; //�Խñ� ��ȣ
	
	int post_writer_idx; //�ۼ��� ��ȣ
	
	String post_password;
	
	String post_title;
	
	String post_contents;
	
	String post_regdate;
	
	int post_hitcount;
	
}
