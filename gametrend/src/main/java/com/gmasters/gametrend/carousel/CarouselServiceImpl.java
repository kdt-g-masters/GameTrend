package com.gmasters.gametrend.carousel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("carouselservice")
public class CarouselServiceImpl implements CarouselService {
	@Autowired
	@Qualifier("carouseldao")
	CarouselDAO dao;
	
	@Override
	public List<CarouselDTO> carousellist() {
		return dao.carousellist();
	}

//	@Override
//	public int insertcarousel(CarouselDTO dto) {
//		return dao.insertcarousel(dto);
//	}
//
//	@Override
//	public int updatecarousel(CarouselDTO dto) {
//		return dao.updatecarousel(dto);
//	}
//
//	@Override
//	public int deletecarousel(int carouselNo) {
//		return dao.deletecarousel(carouselNo);
//	}


}
