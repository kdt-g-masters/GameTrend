package com.gmasters.gametrend.wishlist;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WishlistController {
	
	@Autowired
	@Qualifier("wishlistService")
	WishlistService service;
	
	@RequestMapping("/wishlist")
	public String wishlist() {
		return "wishlist";
	}
}
