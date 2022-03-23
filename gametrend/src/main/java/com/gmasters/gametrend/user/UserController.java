package com.gmasters.gametrend.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

	@Autowired
	@Qualifier("userService")
	UserService service;
	
	@RequestMapping("/join")
	public String joinForm() {
		return "join";
	}
	
	// ȸ������ ���̵� �ߺ�Ȯ�� ajax
	@RequestMapping(value="/join/checkid", method=RequestMethod.POST, produces={"application/json; charset=utf-8"})
	@ResponseBody
	public String checkId(String id) {
		boolean result = service.checkId(id);
		if (result == true) {
			return "{\"result\": \"��� ������ ���̵��Դϴ�.\"}";
		}
		else {			
			return "{\"result\": \"�̹� �����ϴ� ���̵� �Դϴ�. �ٽ� �Է����ּ���.\"}";
		}
	}
}
