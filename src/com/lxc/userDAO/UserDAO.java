package com.lxc.userDAO;

import java.util.List;

import com.lxc.userInf.Users_Inf;

public interface UserDAO {
	Users_Inf get(String user_name);
	
	String save(Users_Inf users_Inf);
	
	void update(Users_Inf users_Inf);
	
	int delete(String user_name);
}
