package com.gmasters.gametrend.game;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("gamedao")
public class GameDAO {
	@Autowired
	SqlSession session;
	
	//게임리스트 페이징 조회
	public List<GameDTO> gamelist(int page){
		int [] limit = new int[] {(page-1)*9, 9};
		List<GameDTO> list = session.selectList("paginglist",limit);
		return list;
	}
	
//	public int totalcount() {
//		return session.selectOne("totalgamecnt");
//	}
//	
//	public int totalcount(String platform) {
//		return session.selectOne("platformtotal");
//	}
	//	//플랫폼별 게임랭킹 조회
//	public List<GameDTO> gamelist(String platform){
//		return session.selectList("platformgamesearch", platform);
//	}
	
	//	//한 게임 선택시 한게임 상세 정보 조회
//	public GameDTO game(int gameNo){
//		return session.selectOne("game", gameNo);
//	}

	//게임추가
//	public int insertgame(GameDTO dto) {
//		return session.insert("insertgame", dto);
//	}
//	//게임정보 수정
//	public int updategame(GameDTO dto) {
//		return session.update("updategame", dto);
//	}
//	//게임 삭제
//	public int deletegame(int gameNo) {
//		return session.delete("deletegame", gameNo);
//	}
	

}
