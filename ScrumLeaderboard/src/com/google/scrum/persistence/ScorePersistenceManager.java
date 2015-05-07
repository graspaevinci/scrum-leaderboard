package com.google.scrum.persistence;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

public class ScorePersistenceManager {
	
	private static final String REGION_PARAMETER = "regionParam";
	private static final String GAME_PARAMETER = "gameParam";

	public void saveScore(Score score) {
		PersistenceManager pm = PersistenceFactory.get().getPersistenceManager();
		try {
            pm.makePersistent(score);
        } finally {
            pm.close();
        }
	}
	
	public List<Score> listScoresByGame(String game) {
		Query q = newQuery();
		q.setFilter("game == " + GAME_PARAMETER);
		q.declareParameters("String " + GAME_PARAMETER);
		
		return executeQuery(q, game);
	}
	
	public List<Score> listScoresByRegion(String region) {
		Query q = newQuery();
		q.setFilter("region == " + REGION_PARAMETER);
		q.declareParameters("String " + REGION_PARAMETER);
		
		return executeQuery(q, region);
	}
	
	public List<Score> listScores() {
		Query q = newQuery();
		return executeQuery(q, null);
	}
	
	private Query newQuery() {
		PersistenceManager pm = PersistenceFactory.get().getPersistenceManager();
		Query q = pm.newQuery(Score.class);
		q.setOrdering("score desc");
		
		return q;
	}
	
	@SuppressWarnings("unchecked")
	private List<Score> executeQuery(Query q, String parameterValue) {
		try {
			if (parameterValue == null) {
				return (List<Score>) q.execute();
			} else {
				return (List<Score>) q.execute(parameterValue);
			}
		} finally {
		  q.closeAll();
		}
	}
}
