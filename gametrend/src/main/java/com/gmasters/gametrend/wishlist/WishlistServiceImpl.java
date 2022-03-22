package com.gmasters.gametrend.wishlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("wishlistService")
public class WishlistServiceImpl implements WishlistService {
	
	@Autowired
	@Qualifier("wishlistDAO")
	WishlistDAO dao;

	@Override
	public List<WishlistDTO> selectPagingWishlist(int[] limit) {
		return dao.selectPagingWishlist(limit);
	}

}
