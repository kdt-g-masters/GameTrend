package com.gmasters.gametrend.user;

public interface UserService {
	public UserDTO loginUser(UserDTO dto);	
	
	public boolean checkId(String id);
	
	public int joinInsertUser(UserDTO dto);
}


////
////