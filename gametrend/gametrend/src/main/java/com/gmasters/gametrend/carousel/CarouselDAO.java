package com.gmasters.gametrend.carousel;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("carouseldao")
public class CarouselDAO {
	@Autowired
	SqlSession session;
	
	//전체 조회
	public List<CarouselDTO> carousellist(){
		return session.selectList("carousellist");
	}	
	//추가
//	public int insertcarousel(CarouselDTO dto) {
//		return session.insert("insertcarousel", dto);
//	}
//	//수정
//	public int updatecarousel(CarouselDTO dto) {
//		return session.update("updatecarousel", dto);
//	}
//	//삭제
//	public int deletecarousel(int carouselNo) {
//		return session.delete("deletecarousel", carouselNo);
//	}
}
