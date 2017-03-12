package com.lxc.userService;

import javax.servlet.http.HttpServletRequest;

import com.lxc.userInf.Users_Inf;

public interface LoginService {

	
	String loginService(Users_Inf users_Inf) throws Exception;
}
