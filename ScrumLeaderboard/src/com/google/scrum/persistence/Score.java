package com.google.scrum.persistence;

import javax.jdo.annotations.Extension;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Score {
	
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    @Extension(vendorName="datanucleus", key="gae.encoded-pk", value="true")
    private String encodedKey;
	
	@Persistent
	private String user;
	
	@Persistent
	private String game;
	
	@Persistent
	private String region;
	
	@Persistent
	private Long score;
	
	public Score(String region, String user, String game, long score) {
		this.user = user;
		this.game = game;
		this.score = score;
	}
	
	public Score() {
		this(null, null, null, -1);
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	public String getUser() {
		return user;
	}

	public void setRegion(String region) {
		this.region = region;
	}
	
	public String getRegion() {
		return region;
	}
	
	public String getGame() {
		return game;
	}

	public void setGame(String game) {
		this.game = game;
	}
	
	public void setScore(long score) {
		this.score = score;
	}
	
	public long getScore() {
		return score;
	}
}
