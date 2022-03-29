package com.gmasters.gametrend.game;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("gameservice")
public class GameServiceImpl implements GameService {
	
	@Autowired
	@Qualifier("gamedao")
	GameDAO dao;

	@Override
	public List<GameDTO> gamelist(int page) {
		return dao.gamelist(page);
	}	
	
}
