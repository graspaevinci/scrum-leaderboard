package com.google.scrum;

import javax.servlet.http.HttpServletRequest;

import com.google.scrum.persistence.Score;

public class AddScoreHandler {

	public AddScoreResponse handle(HttpServletRequest request) {
		String scoreString = request.getParameter("score");
        String region = request.getParameter("region");
        String user = request.getParameter("user");
		
		Score score = new Score(region, user, score);
		
		AddScoreResponse response = new AddScoreResponse();
		response.setScore(score);
		return response;
	}
	
}