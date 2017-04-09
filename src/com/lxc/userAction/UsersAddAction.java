package com.lxc.userAction;

import com.lxc.userInf.Users_Inf;
import com.lxc.userService.UsersAddService;
import com.opensymphony.xwork2.Action;

public class UsersAddAction implements Action {
	private Users_Inf users_Inf;
	private String tips;
	private UsersAddService usersAddService;
	public Users_Inf getUsers_Inf() {
		return users_Inf;
	}
	public void setUsers_Inf(Users_Inf users_Inf) {
		this.users_Inf = users_Inf;
	}
	public String getTips() {
		return tips;
	}
	public void setTips(String tips) {
		this.tips = tips;
	}
	public UsersAddService getUsersAddService() {
		return usersAddService;
	}
	public void setUsersAddService(UsersAddService usersAddService) {
		this.usersAddService = usersAddService;
	}
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		String result = usersAddService.usersAdd(users_Inf);
		if ("success!".equals(result)) {
			return SUCCESS;
		} else {
			setTips("新增用户失败！");
			return ERROR;
		}
	}

}
