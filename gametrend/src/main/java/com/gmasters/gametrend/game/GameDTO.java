package com.gmasters.gametrend.game;

import org.springframework.stereotype.Component;

@Component
public class GameDTO {
	int gameNo;
	String name;
	String explanation;
	String genre1;
	String genre2;
	String genre3;
	String platform = null;
	String thumbnail;
	int views = 0;
	double rating = 0;
	String releaseDate;
	String trailer;
	String screenshot1;
	String screenshot2;
	String screenshot3;
	String screenshot4 = null;
	int no;
	
	public GameDTO() {}
	public GameDTO(int no, int gameNo, String name, String explanation, String genre1, String genre2, String genre3,
			String platform, String thumbnail, int views, double rating, String releaseDate, String trailer,
			String screenshot1, String screenshot2, String screenshot3, String screenshot4) {
		super();
		this.no = no;
		this.gameNo = gameNo;
		this.name = name;
		this.explanation = explanation;	
		this.genre1 = genre1;
		this.genre2 = genre2;
		this.genre3 = genre3;
		this.platform = platform;
		this.thumbnail = thumbnail;
		this.views = views;
		this.rating = rating;
		this.releaseDate = releaseDate;
		this.trailer = trailer;
		this.screenshot1 = screenshot1;
		this.screenshot2 = screenshot2;
		this.screenshot3 = screenshot3;
		this.screenshot4 = screenshot4;
	}
	public GameDTO(int gameNo, String name, String explanation, String genre1, String genre2, String genre3,
			String platform, String thumbnail, int views, double rating, String releaseDate, String trailer,
			String screenshot1, String screenshot2, String screenshot3, String screenshot4) {
		super();
		this.gameNo = gameNo;
		this.name = name;
		this.explanation = explanation;	
		this.genre1 = genre1;
		this.genre2 = genre2;
		this.genre3 = genre3;
		this.platform = platform;
		this.thumbnail = thumbnail;
		this.views = views;
		this.rating = rating;
		this.releaseDate = releaseDate;
		this.trailer = trailer;
		this.screenshot1 = screenshot1;
		this.screenshot2 = screenshot2;
		this.screenshot3 = screenshot3;
		this.screenshot4 = screenshot4;
	}	
	
	public int getGameNo() {
		return gameNo;
	}
	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getGenre1() {
		return genre1;
	}
	public void setGenre1(String genre1) {
		this.genre1 = genre1;
	}
	public String getGenre2() {
		return genre2;
	}
	public void setGenre2(String genre2) {
		this.genre2 = genre2;
	}
	public String getGenre3() {
		return genre3;
	}
	public void setGenre3(String genre3) {
		this.genre3 = genre3;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getTrailer() {
		return trailer;
	}
	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}
	public String getScreenshot1() {
		return screenshot1;
	}
	public void setScreenshot1(String screenshot1) {
		this.screenshot1 = screenshot1;
	}
	public String getScreenshot2() {
		return screenshot2;
	}
	public void setScreenshot2(String screenshot2) {
		this.screenshot2 = screenshot2;
	}
	public String getScreenshot3() {
		return screenshot3;
	}
	public void setScreenshot3(String screenshot3) {
		this.screenshot3 = screenshot3;
	}
	public String getScreenshot4() {
		return screenshot4;
	}
	public void setScreenshot4(String screenshot4) {
		this.screenshot4 = screenshot4;
	}
	
	
}
