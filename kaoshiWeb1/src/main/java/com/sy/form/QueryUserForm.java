package com.sy.form;

public class QueryUserForm {

	private Integer userId;
    private String userName;
    private String userPassword;
    private String sex;
    private String[] checkName;
    private String nameHide;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String[] getCheckName() {
		return checkName;
	}
	public void setCheckName(String[] checkName) {
		this.checkName = checkName;
	}
	public String getNameHide() {
		return nameHide;
	}
	public void setNameHide(String nameHide) {
		this.nameHide = nameHide;
	}
    
    
}
