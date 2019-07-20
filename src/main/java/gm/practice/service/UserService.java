package gm.practice.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gm.practice.mapper.UserMapper;
import gm.practice.model.UserTo;
import lombok.Setter;

@Service
public class UserService {

	@Setter(onMethod_=@Autowired)
	private UserMapper mapper;
	
	public UserTo loginUserService(UserTo user) throws Exception{
		
		return mapper.loginUser();
	}
	
}
