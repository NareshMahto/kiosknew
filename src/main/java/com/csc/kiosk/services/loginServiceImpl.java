package com.csc.kiosk.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.csc.kiosk.dao.LoginDao;
import com.csc.kiosk.model.AdminUser;

@Service
@Transactional
public class loginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDao loginDao;

	@Override
	public AdminUser getLoginDetails(String id, String password) {
		
		return this.loginDao.getLoginDetails(id, password);
	}

}
