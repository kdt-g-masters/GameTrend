package com.gmasters.gametrend.wishlist;

import java.util.List;

public interface WishlistService {
	public List<WishlistDTO> selectPagingWishlist(int[] limit);
}
