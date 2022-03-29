package com.gmasters.gametrend.wishlist;

import org.springframework.stereotype.Component;

import com.gmasters.gametrend.game.GameDTO;

@Component
public class WishlistGameDTO {
	WishlistDTO wishlistDTO;
	GameDTO gameDTO;
	
	public WishlistDTO getWishlistDTO() {
		return wishlistDTO;
	}
	public void setWishlistDTO(WishlistDTO wishlistDTO) {
		this.wishlistDTO = wishlistDTO;
	}
	public GameDTO getGameDTO() {
		return gameDTO;
	}
	public void setGameDTO(GameDTO gameDTO) {
		this.gameDTO = gameDTO;
	}
	
	
}
