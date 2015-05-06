package com.google.scrum;

import javax.servlet.http.HttpServletRequest;

public class Handler {

	public Object handle(HttpServletRequest request) {
		return "hello world!";
	}
	
}
