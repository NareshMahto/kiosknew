package com.csc.kiosk.urls;

public interface Common {

	public interface Urls {
		final String HOME = "/";
	}

	public interface Pages {

		final String HOME_PAGE = "index";
		final String lOGIN_PAGE = "login";
		final String USER_DASHBORD = "dashboard";

	}

	public interface FrormAction {
		
		final String LOGIN_ACTION = "userLogin";
		final String LOGOUT_ACTION = "/AdminLogout";
		
	}

}
