package gm.practice.mapper;

import gm.practice.model.UserBean;
import gm.practice.model.UserTo;

public interface UserMapper {

	
	//public String getTime();
	
	public UserTo listUser();
	
	public UserTo loginUser();
	
}
