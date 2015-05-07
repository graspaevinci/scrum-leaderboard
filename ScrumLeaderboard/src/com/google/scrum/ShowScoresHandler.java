package com.google.scrum;

import javax.servlet.http.HttpServletRequest;

import com.google.scrum.persistence.ScorePersistenceManager;

public class ShowScoresHandler {

	public ShowScoresResponse handle(HttpServletRequest request) {
		// TODO(gasparini): use the filters.
		String gameFilter = request.getParameter("game");
		String regionFilter = request.getParameter("region");
		
		ScorePersistenceManager manager = new ScorePersistenceManager();
		ShowScoresResponse response = new ShowScoresResponse();
		response.setScores(manager.listScores());
		return response;
	}
}
