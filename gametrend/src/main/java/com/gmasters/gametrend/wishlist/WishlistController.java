package com.gmasters.gametrend.wishlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WishlistController {
	
	@Autowired
	@Qualifier("wishlistService")
	WishlistService service;
	
	@RequestMapping("/wishlisttest")
	public String wishlisttest() {
		return "wishlist";
	}
	
	//@RequestMapping("/wishlist")
	public ModelAndView wishlist() {
		ModelAndView mv = new ModelAndView();
		List<WishlistDTO> list = service.selectAll();
		mv.addObject("list", list);
		mv.setViewName("test");
		return mv;
	}
	
	@RequestMapping("/wishlist/paginglist")
	public ModelAndView selectPagingMember(int page) {
		int[] limit = new int[2];
		limit[0] = (page - 1) * 6;
		limit[1] = 6;
		ModelAndView mv = new ModelAndView();
		List<WishlistDTO> list = service.selectPagingWishlist(limit);
		mv.addObject("paingList", list);
		mv.setViewName("wishlist");
		return mv;
	}
	
	// ajax
	@RequestMapping(value="/wishlist/paging", produces={"application/json; charset=utf-8"})
	@ResponseBody
	public List<WishlistGameDTO> myWishlist(String userId, int page) {
		int[] limit = new int[2];
		limit[0] = (page - 1) * 6;
		limit[1] = 6;
		List<WishlistGameDTO> list = service.joinWishlistGame(userId, limit);
		return list;
	}
	
	@RequestMapping("/wishlist")
	public ModelAndView myWishlist2(String userId, int page) {
		int[] limit = new int[2];
		limit[0] = (page - 1) * 6;
		limit[1] = 6;
		ModelAndView mv = new ModelAndView();
		List<WishlistGameDTO> list = service.joinWishlistGame(userId, limit);
		System.out.println(list);
		mv.addObject("wishlist", list);
		mv.setViewName("wishlist");
		return mv;
	}
}
