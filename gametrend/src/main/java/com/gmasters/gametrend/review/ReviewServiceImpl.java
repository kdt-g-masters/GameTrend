package com.gmasters.gametrend.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("reviewservice")
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	@Qualifier("reviewdao")
	ReviewDAO dao;
	
	@Override
	public List<ReviewDTO> selectAllReview() {
		return dao.selectAllReview();
	}

	@Override
	public int selectCountReview() {
		return dao.selectCountReview();
	}

	@Override
	public int insertReview(ReviewDTO dto) {
		return dao.insertReview(dto);
	}

	@Override
	public List<ReviewDTO> selectReviewgameNo(int gameNo) {
		return dao.selectReviewgameNo(gameNo);
	}

	@Override
	public int countReviewgameNo(int gameNo) {
		return dao.countReviewgameNo(gameNo);
	}

	
	
	
}
