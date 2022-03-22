package com.gmasters.gametrend.wishlist;

import java.util.List;

public interface WishlistService {
	public List<WishlistDTO> selectPagingWishlist(int[] limit);
	public List<WishlistGameDTO> joinWishlistGame(String userId, int[] limit);
	public List<WishlistDTO> selectAll();
}
