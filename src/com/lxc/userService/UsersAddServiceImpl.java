package com.lxc.userService;

import java.util.Map;

import com.lxc.userDAO.UserDAO;
import com.lxc.userInf.Users_Inf;
import com.opensymphony.xwork2.ActionContext;

public class UsersAddServiceImpl implements UsersAddService {

	private UserDAO userDAO;
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	@Override
	public String usersAdd(Users_Inf users_Inf) throws Exception {
		// TODO 自动生成的方法存根
		String result = userDAO.save(users_Inf);
		if (result == null) {
			return "fail!";
		}
		if (result.equals(users_Inf.getUser_name())) {
			return "success!";
		} else {
			 return "fail!";
		}
	}

}
