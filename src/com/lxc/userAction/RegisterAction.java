package com.lxc.userAction;

import com.lxc.userInf.Users_Inf;
import com.lxc.userService.RegisterService;
import com.opensymphony.xwork2.Action;

public class RegisterAction implements Action{

	private String tipString;
	private RegisterService registerService;
	private Users_Inf users_Inf;
	public String getTipString() {
		return tipString;
	}
	public void setTipString(String tipString) {
		this.tipString = tipString;
	}
	public Users_Inf getUsers_Inf() {
		return users_Inf;
	}
	public void setUsers_Inf(Users_Inf users_Inf) {
		this.users_Inf = users_Inf;
	}
	public void setRegisterService(RegisterService registerService) {
		this.registerService = registerService;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String result = registerService.register(users_Inf);
		if (result.equals("success!")) {
			setTipString("成功！");
			return SUCCESS;
		} else if (result.equals("fail!")) {
			return "cuo";
		} else {
			return NONE;
		}
	}

}
