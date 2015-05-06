package com.google.scrum.persistence;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

public final class PersistenceFactory {
	private static final PersistenceManagerFactory pmfInstance =
			JDOHelper.getPersistenceManagerFactory("transactions-optional");

	private PersistenceFactory() {}

	public static PersistenceManagerFactory get() {
		return pmfInstance;
	}
}