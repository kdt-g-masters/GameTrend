package com.gmasters.gametrend.carousel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CarouselController {
	@Autowired
	@Qualifier("carouselservice")
	CarouselService service;
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public ModelAndView carouselist() {
		ModelAndView mv = new ModelAndView();
		List<CarouselDTO> list = service.carousellist();
		mv.addObject("carousellist", list);
		mv.setViewName("/carousel");
		return mv;
	}
	
//	@RequestMapping(value = "/insertcarousel", method = RequestMethod.GET )
//	public String insertform() {
//		return "admin/insertcarousel";
//	}
//	
//	@RequestMapping(value = "/insertcarousel", method = RequestMethod.POST)
//	public ModelAndView insertresult(CarouselDTO dto) {
//		ModelAndView mv = new ModelAndView();
//		int result = service.insertcarousel(dto);
//		mv.addObject("result", result);
//		mv.addObject("name", "carousel 추가");
//		mv.setViewName("carousel/insertresult");
//		return mv;
//	}
//	
//	@RequestMapping(value = "/updatecarousel", method = RequestMethod.GET )
//	public String updateform(String id) {
//		return "carousel/updatecarousel";
//	}
//	
//	@RequestMapping(value = "/updatecarousel", method = RequestMethod.POST)
//	public ModelAndView updateresult(CarouselDTO dto) {
//		ModelAndView mv = new ModelAndView();
//		int result = service.updatecarousel(dto);
//		mv.addObject("result", result);
//		mv.addObject("name", "carousel 정보 수정");
//		mv.setViewName("carousel/updateresult");
//		return mv;
//	}
//	
//	@RequestMapping("/deletecarousel")
//	public String deleteresult(int carouselNo) {
//		int result = service.deletecarousel(carouselNo);
//		if(result == 1) {
//			return "redirect:/carousel";
//		}
//		else {
//			return "redirect:/insertcarousel";
//		} 
//	}
}
