package com.google.scrum;

import java.util.List;

import com.google.scrum.persistence.Score;

public class ShowScoresResponse {

	private List<Score> scores;

	public List<Score> getScores() {
		return scores;
	}

	public void setScores(List<Score> scores) {
		this.scores = scores;
	}
	
}
