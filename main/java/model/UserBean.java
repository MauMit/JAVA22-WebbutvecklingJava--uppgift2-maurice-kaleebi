package model;

public class UserBean {

	private String userName = "";
	private String passWord = "";

	public String getUser() {
		return userName;
	}
	

	public void setUser(String userName, String passWord) {
		this.userName = userName;
		this.passWord = passWord;
		
		
	}

	
	public boolean checkValidUser() {
		return UserHandler.checkValidUser(this.userName, this.passWord);
		
	}
	

}
