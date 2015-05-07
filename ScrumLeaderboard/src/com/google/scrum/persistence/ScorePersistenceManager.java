package com.google.scrum.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

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
		PersistenceManager pm = PersistenceFactory.get().getPersistenceManager();
		Query q = pm.newQuery(Score.class);
		q.setOrdering("score desc");
		
		try {
		  return (List<Score>) q.execute();
		} finally {
		  q.closeAll();
		}
	}

}
