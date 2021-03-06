package com.google.scrum;

import javax.servlet.http.HttpServletRequest;

import com.google.scrum.persistence.Score;
import com.google.scrum.persistence.ScorePersistenceManager;

public class AddScoreHandler {

	public AddScoreResponse handle(HttpServletRequest request) {
		String scoreString = request.getParameter("score");
        String region = request.getParameter("region");
        String user = request.getParameter("user");
		long score = Long.parseLong(scoreString);
		String name = request.getParameter("name");
		String game = request.getParameter("game");

		Score scoreObj = new Score(region, name, game, score);

		ScorePersistenceManager manager = new ScorePersistenceManager();
		manager.saveScore(scoreObj);
		
		AddScoreResponse response = new AddScoreResponse();
		response.setScore(score);
		response.setName(name);
		return response;
	}
	
}
