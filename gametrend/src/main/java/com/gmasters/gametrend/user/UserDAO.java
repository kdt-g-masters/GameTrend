package com.gmasters.gametrend.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDAO")
public class UserDAO {

	@Autowired
	SqlSession session;
	
	// 아이디 중복확인
	public String checkId(String id) {
		System.out.println("dao 클래스 " + session.selectOne("checkId", id));
		return session.selectOne("checkId", id);
	}
	
	public int joinInsertUser(UserDTO dto) {
		int row = session.insert("joinInsertUser", dto);
		return row;
	}
}
