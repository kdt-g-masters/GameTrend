package com.gmasters.gametrend.wishlist;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public List<WishlistGameDTO> joinWishlistGame(String id, int[] limit) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("limit", limit);
		return session.selectList("joinWishlistGame", map);
	}
	
	public List<WishlistDTO> selectAll() {
		return session.selectList("selectAllWishlist");
	}
}
