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

	@Override
	public List<WishlistGameDTO> joinWishlistGame(String userId, int[] limit) {
		return dao.joinWishlistGame(userId, limit);
		/*
		 * try { System.out.println("여기 왔다감");
		 * 
		 * } catch (Exception e) { System.out.println("여기 왔다감2"); }
		 * System.out.println("여기 왔다감3"); return null;
		 */
	}

	@Override
	public List<WishlistDTO> selectAll() {
		return dao.selectAll();
	}
	
	
	
	

}
