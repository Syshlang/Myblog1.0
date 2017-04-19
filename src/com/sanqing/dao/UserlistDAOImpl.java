package com.sanqing.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sanqing.po.Userlist;

public class UserlistDAOImpl extends HibernateDaoSupport implements UserlistDAO {

	public void add(Userlist user) {
		this.getHibernateTemplate().save(user);
	}

	public void delete(Userlist user) {

	}

	public List queryAll() {
		return null;
	}

	public Userlist queryByID(String username) {
		List list = this.getHibernateTemplate().find("select user from Userlist user where user.username = '" + username + "'");
		
		if(list.size() == 0) {
			return null; 
		} else {
			return (Userlist)list.get(0);
		}
	}

	public void update(Userlist user) {

	}

}
