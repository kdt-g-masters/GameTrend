package com.gmasters.gametrend.user;

public interface UserService {
	public boolean checkId(String id);
	public int joinInsertUser(UserDTO dto);
}
