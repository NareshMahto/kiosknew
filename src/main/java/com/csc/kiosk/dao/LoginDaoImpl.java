package com.csc.kiosk.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.csc.kiosk.model.AdminUser;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public AdminUser getLoginDetails(String id, String password) {

		Session session = sessionFactory.getCurrentSession();
		Criteria user = session.createCriteria(AdminUser.class);
		user.add(Restrictions.eq("userId", id));
		if (user.list().size() > 0) {
			return (AdminUser) user.list().get(0);
		} else {
			return null;
		}
	}

}
