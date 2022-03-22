package com.gmasters.gametrend.wishlist;

import org.springframework.stereotype.Component;

@Component
public class WishlistDTO {
	int wishlistNo;
	String userId;
	int gameNo;
	
	public int getWishlistNo() {
		return wishlistNo;
	}
	public void setWishlistNo(int wishlistNo) {
		this.wishlistNo = wishlistNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getGameNo() {
		return gameNo;
	}
	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}
	
	
}
