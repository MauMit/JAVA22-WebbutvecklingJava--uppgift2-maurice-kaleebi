package model;

public class UserHandler {

	
public static boolean checkValidUser(String userIsCorrect, String passIsCorrect) {
		
		if(userIsCorrect.equals("moe") && passIsCorrect.equals("pac")) {
			return true;
		}else if(userIsCorrect.equals("maurice") && passIsCorrect.equals("kaleebi"))   { 
			return true;
		
		} else {
			return false;
		}
		
}
	
}

	

	
	
