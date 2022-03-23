package com.gmasters.gametrend.game;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GameController {
	@Autowired
	@Qualifier("gameservice")
	GameService service;
	
	@RequestMapping("/list")
	public ModelAndView gamelist(int page) {
		System.out.println(page);
		ModelAndView mv = new ModelAndView();
		List<GameDTO> list = service.gamelist(page);
		mv.addObject("paginglist",list);
		mv.addObject("name", "페이징처리리스트");
		mv.setViewName("index");
		return mv;
	}
	
	//@RequestMapping(value="/{platform}")
	
	
}
