package com.lxc.userAction;

import com.lxc.userInf.Users_Inf;
import com.lxc.userService.UsersDeleteService;
import com.opensymphony.xwork2.Action;

public class UsersDeleteAction implements Action{

	private Users_Inf users_Inf;
	private UsersDeleteService usersDeleteService;
	private String deleteTipString;
	public Users_Inf getUsers_Inf() {
		return users_Inf;
	}
	public void setUsers_Inf(Users_Inf users_Inf) {
		this.users_Inf = users_Inf;
	}
	public UsersDeleteService getUsersDeleteService() {
		return usersDeleteService;
	}
	public void setUsersDeleteService(UsersDeleteService usersDeleteService) {
		this.usersDeleteService = usersDeleteService;
	}
	public String getDeleteTipString() {
		return deleteTipString;
	}
	public void setDeleteTipString(String deleteTipString) {
		this.deleteTipString = deleteTipString;
	}
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		String result = usersDeleteService.usersDelete(users_Inf.getUser_name());
		if ("success".equals(result)) {
			return SUCCESS;
		} else {
			setDeleteTipString("删除用户失败！");
			return ERROR;
		}
	}
	
}
