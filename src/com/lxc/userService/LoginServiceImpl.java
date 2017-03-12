package com.lxc.userService;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.lxc.userDAO.UserDAO;
import com.lxc.userInf.Users_Inf;
import com.opensymphony.xwork2.ActionContext;

public class LoginServiceImpl implements LoginService{

	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public String loginService(Users_Inf users_Inf) throws Exception {
		// TODO Auto-generated method stub
		Users_Inf users_Inf2 = userDAO.get(users_Inf.getUser_name());
		if (users_Inf2 == null) {
			return "false";
		}
		String password = users_Inf2.getPassword();
		ActionContext ct = ActionContext.getContext();//获得struts2上下文
		Map session = ct.getSession();
		session.put("username", users_Inf2.getUser_name());
		if (users_Inf2.getPower() == null) {
			if (users_Inf.getPassword().equals(password)) {
				return "true";
			} else {
				return "false";
			}
		} else {
			return "admin";
		}
			
	}

}
