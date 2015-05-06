package com.google.scrum;

import javax.servlet.http.HttpServletRequest;

public class AddScoreHandler {

	public AddScoreResponse handle(HttpServletRequest request) {
		String scoreString = request.getParameter("score");
		long score = Long.parseLong(scoreString);
		// TODO: use the score.
		return new AddScoreResponse();
	}
	
}
