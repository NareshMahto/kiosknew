package com.csc.kiosk.services;

import com.csc.kiosk.model.AdminUser;

public interface LoginService {

	AdminUser getLoginDetails(String id, String password);

}
