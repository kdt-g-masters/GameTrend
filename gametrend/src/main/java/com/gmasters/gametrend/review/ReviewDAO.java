package com.gmasters.gametrend.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reviewdao")
public class ReviewDAO {
	@Autowired
	SqlSession session;
	
	public List<ReviewDTO> selectAllReview(){
		List<ReviewDTO> list = session.selectList("selectAllReview");
		return list;
	}
	
	public int selectCountReview() {
		return session.selectOne("selectCountReview");
	}
	
	public int countReviewgameNo(int gameNo) {
		return session.selectOne("countReviewgameNo", gameNo);
	}
	
	public List<ReviewDTO> selectReviewgameNo(int gameNo){
		List<ReviewDTO> list = session.selectList("selectReviewgameNo", gameNo);
		return list;
	}
	
	public int insertReview(ReviewDTO dto) {
		int insertrow = session.insert("insertReview", dto);
		return insertrow;
	}
	
}
