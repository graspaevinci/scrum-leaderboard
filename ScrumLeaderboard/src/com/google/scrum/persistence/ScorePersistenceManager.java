package com.google.scrum.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;

public class ScorePersistenceManager {
	
	public void saveScore(Score score) {
		PersistenceManager pm = PersistenceFactory.get().getPersistenceManager();
		try {
            pm.makePersistent(score);
        } finally {
            pm.close();
        }
	}
	
	public List<Score> listScores() {
		return new ArrayList<Score>();
	}

}
