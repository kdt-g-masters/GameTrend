package com.gmasters.gametrend.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("loginUser")
public class UserController {

	@Autowired
	@Qualifier("userService")
	UserService service;
	
	// 로그인 페이지
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginform() {	
	}
	
    // 로그인 시도
	@RequestMapping(value="/login", method=RequestMethod.POST , produces = {"application/json;charset=utf-8"} )
	@ResponseBody
	public String loginAction(HttpServletRequest request, UserDTO dto) throws Exception {
		UserDTO loginUser = service.loginUser(dto);
		
	if(loginUser != null) {
		// 세션 아이디 가져오기
		HttpSession session = request.getSession();
		session.setAttribute("sessionid", loginUser.getId());
		return "1";//{\"process\":\"정상로그인\" , \"role\":\"user\"}";	
		}
		else {
		return "2";//"{\"process\":\"비정상로그인\" , \"role\":\"admin\"}";		
		}
		
	}
	
	//아이디 찾기 페이지 이동
	/*@RequestMapping(value="/login2", method=RequestMethod.GET)
	public String findIdView() {
		return "";
	}*/
	
    // 아이디 찾기 실행
	/*@RequestMapping(value="/login2", method=RequestMethod.GET , produces = {"application/json;charset=utf-8"} )
	public String findIdAction(UserDTO dto) {
		UserDTO findId = service.findId(dto);
		
		if(findId == null) { 
			return "1";
		} else { 
			return "2";
			
		}
		
	}*/
	
    /* // 비밀번호 찾기 페이지로 이동
	@RequestMapping(value="find_password_form")
	public String findPasswordView() {
		return "member/findPassword";
	} */
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String temp = (String) session.getAttribute("sessionid");
		if (temp != null) {
			System.out.println("세션에 저장된 아이디: " + temp);
		}
		return "index";
	}
	
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
	
	
	// 회원가입 아이디 중복확인 ajax
	@RequestMapping(value="/join/checkid", method=RequestMethod.POST, produces={"application/json; charset=utf-8"})
	@ResponseBody
	public String checkId(String id) {
		boolean result = service.checkId(id);
		if (result == true) {
			return "{\"result\": \"사용 가능한 아이디입니다.\", \"state\": \"available\"}";
		}
		else {			
			return "{\"result\": \"이미 존재하는 아이디 입니다. 다시 입력해주세요.\", \"state\": \"notAvailable\"}";
		}
	}
}
