package com.csc.kiosk.dao;

import com.csc.kiosk.model.AdminUser;

public interface LoginDao {

	AdminUser getLoginDetails(String id, String password);

}
