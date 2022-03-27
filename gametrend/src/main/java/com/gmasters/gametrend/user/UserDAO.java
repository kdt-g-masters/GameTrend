package com.gmasters.gametrend.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDAO")
public class UserDAO {

	@Autowired
	SqlSession session;

	public UserDTO loginUser(UserDTO dto) {
		System.out.println("==> Mybatis�� loginUser() ��� ó��");
		return session.selectOne("loginUser", dto);
	}

	/*public UserDTO findId(UserDTO dto) {
		System.out.println("==> Mybatis�� findId() ��� ó��");
		return session.selectOne("findId", dto);
	}*/

	/* public UserDTO findPassword(UserDTO dto) {
		System.out.println("==> Mybatis�� findPassword() ��� ó��");
		return session.selectOne("UserDAO.findPassword", dto);
	}*/
	
	// ���̵� �ߺ�Ȯ��
	public String checkId(String id) {
		System.out.println("dao Ŭ���� " + session.selectOne("checkId", id));
		return session.selectOne("checkId", id);
	}
	
	public int joinInsertUser(UserDTO dto) {
		int row = session.insert("joinInsertUser", dto);
		return row;
	}
}
