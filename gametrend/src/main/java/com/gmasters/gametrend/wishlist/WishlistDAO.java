package com.gmasters.gametrend.wishlist;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("wishlistDAO")
public class WishlistDAO {

	@Autowired
	SqlSession session;
	
	public List<WishlistDTO> selectPagingWishlist(int[] limit) {
		return session.selectList("pagingList", limit);
	}
}
