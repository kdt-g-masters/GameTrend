package com.gmasters.gametrend.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@Autowired
	@Qualifier("userService")
	UserService service;
	
	@RequestMapping("/join")
	public String joinForm() {
		return "join";
	}
	
	@RequestMapping("/join/insertuser")
	public ModelAndView joinInsertUser(UserDTO dto) {
		int row = service.joinInsertUser(dto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", row);
		mv.setViewName("joinResult");
		return mv;
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
