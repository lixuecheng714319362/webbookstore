package com.lxc.userAction;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.SessionAware;

import com.lxc.userInf.Users_Inf;
import com.lxc.userService.LoginService;
import com.opensymphony.xwork2.Action;

public class LoginAction implements Action {

	private Users_Inf users_Inf;
	private String tipString;
	private LoginService loginService;
	public String getTipString() {
		return tipString;
	}
	public void setTipString(String tipString) {
		this.tipString = tipString;
	}
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	public void setUsers_Inf(Users_Inf users_Inf) {
		this.users_Inf = users_Inf;
	}
	public Users_Inf getUsers_Inf() {
		return users_Inf;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String flag = loginService.loginService(users_Inf);
		if ("true".equals(flag)) {
			setTipString("欢迎！");
			return SUCCESS;
		} else if ("false".equals(flag)) {
			return ERROR;
		} else {
			return "admin";
		}
	}
}
