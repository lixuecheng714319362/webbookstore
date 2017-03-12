package com.lxc.userInf;

public class Users_Inf {
	public Users_Inf() {
	}
	public Users_Inf(String user_name, String password, Integer power) {
		this.user_name = user_name;
		this.password = password;
		this.power = power;
	}
	
	private String user_name;
	private String password;
	private Integer power;
	public Integer getPower() {
		return power;
	}
	public void setPower(Integer power) {
		this.power = power;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
