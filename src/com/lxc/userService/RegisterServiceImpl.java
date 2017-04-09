package com.lxc.userService;

import java.util.Map;

import com.lxc.userDAO.UserDAO;
import com.lxc.userInf.Users_Inf;
import com.opensymphony.xwork2.ActionContext;

public class RegisterServiceImpl implements RegisterService{

	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public String register(Users_Inf users_Inf) throws Exception {
		// TODO Auto-generated method stub
		if ("".equals(users_Inf.getUser_name())) {
			return "fail!";
		}
		String result = userDAO.save(users_Inf);
		if (result == null) {
			return "havaExist!";
		}
		if (result.equals(users_Inf.getUser_name())) {
			ActionContext ct = ActionContext.getContext();
			Map sessionMap = ct.getSession();
			sessionMap.put("username", result);
			return "success!";
		} else {
			 return "fail!";
		}
	}

}
