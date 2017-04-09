package com.lxc.userService;

import java.util.Map;

import com.lxc.userDAO.UserDAO;
import com.lxc.userInf.Users_Inf;
import com.opensymphony.xwork2.ActionContext;

public class UsersPwdEditServiceImpl implements UsersPwdEditService {
	
	private UserDAO userDAO;
	public UserDAO getUserDAO() {
		return userDAO;
	}
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	@Override
	public String pwdEdit(Users_Inf users_Inf) {
		// TODO 自动生成的方法存根
		ActionContext ct = ActionContext.getContext();
		Map sessionMap = ct.getSession();
		String user_name = (String) sessionMap.get("username");
		if (user_name.equals(users_Inf.getUser_name())) {
			userDAO.update(users_Inf);
			return "success";
		} else {
			return "error";
		}
	}

}
