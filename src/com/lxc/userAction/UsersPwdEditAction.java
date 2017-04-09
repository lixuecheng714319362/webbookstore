package com.lxc.userAction;

import java.util.Map;

import com.lxc.userInf.Users_Inf;
import com.lxc.userService.UsersPwdEditService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class UsersPwdEditAction implements Action {

	private Users_Inf users_Inf;
	private String editTipString;
	private UsersPwdEditService usersPwdEditService;
	public Users_Inf getUsers_Inf() {
		return users_Inf;
	}
	public void setUsers_Inf(Users_Inf users_Inf) {
		this.users_Inf = users_Inf;
	}
	public String getEditTipString() {
		return editTipString;
	}
	public void setEditTipString(String editTipString) {
		this.editTipString = editTipString;
	}
	public UsersPwdEditService getUsersPwdEditService() {
		return usersPwdEditService;
	}
	public void setUsersPwdEditService(UsersPwdEditService usersPwdEditService) {
		this.usersPwdEditService = usersPwdEditService;
	}
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		String result = usersPwdEditService.pwdEdit(users_Inf);
		if (("success").equals(result)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

}
