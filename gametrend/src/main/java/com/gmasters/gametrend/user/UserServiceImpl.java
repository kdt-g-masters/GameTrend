package com.gmasters.gametrend.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private
	@Qualifier("userDAO")
	UserDAO dao;
	
	@Override
	public UserDTO loginUser(UserDTO dto) {
		return dao.loginUser(dto);
	}
	
	@Override
	public boolean checkId(String id) {
		String result = dao.checkId(id);
		System.out.println(result);
		if (result == null) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public int joinInsertUser(UserDTO dto) {
		return dao.joinInsertUser(dto);
	}
	
}

//
