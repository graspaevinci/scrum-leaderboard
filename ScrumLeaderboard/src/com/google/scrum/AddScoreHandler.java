package com.google.scrum;

import javax.servlet.http.HttpServletRequest;

import com.google.scrum.persistence.Score;
import com.google.scrum.persistence.ScorePersistenceManager;

public class AddScoreHandler {

	public AddScoreResponse handle(HttpServletRequest request) {
		String scoreString = request.getParameter("score");
		long score = Long.parseLong(scoreString);
		String name = request.getParameter("name");
		Score scoreObj = new Score(name, score);
		ScorePersistenceManager manager = new ScorePersistenceManager();
		manager.saveScore(scoreObj);
		
		AddScoreResponse response = new AddScoreResponse();
		response.setScore(score);
		response.setName(name);
		return response;
	}
	
}
