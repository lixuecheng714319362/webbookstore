package com.lxc.userService;

import com.lxc.userDAO.UserDAO;

public class UsersDeleteServiceImpl implements UsersDeleteService {

	private UserDAO userDAO;
	public UserDAO getUserDAO() {
		return userDAO;
	}
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	@Override
	public String usersDelete(String user_name) {
		// TODO 自动生成的方法存根
		int result = userDAO.delete(user_name);
		if (result != 0) {//删除成功
			return "success";
		} else {//删除失败
			return "error";
		}
	}

}
