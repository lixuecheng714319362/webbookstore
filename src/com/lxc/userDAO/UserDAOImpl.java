package com.lxc.userDAO;


import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lxc.hibernateUtils.HibernateUtils;
import com.lxc.userInf.Users_Inf;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	/**
	 * 对用户表的删除、查询、修改、保存操作
	 */
	@SuppressWarnings("rawtypes")
	@Override
	public Users_Inf get(String user_name) {
		// TODO Auto-generated method stub
//		return getHibernateTemplate().get(Users_Inf.class, user_name).getPassword();
		SessionFactory sFactory = HibernateUtils.getSessionFactory();
		Session session = sFactory.openSession();
		Transaction tx = session.beginTransaction();
		List list = session.createQuery("from Users_Inf u where u.user_name= :name")
				.setString("name", user_name)
				.list();
		if (list.size() == 0) {
			return null;
		}
		Users_Inf users_Inf = (Users_Inf) list.get(0);
		tx.commit();
		session.close();
		return users_Inf;
	}

	@Override
	public String save(Users_Inf users_Inf) {
		// TODO Auto-generated method stub
//		return (String) getHibernateTemplate().save(users_Inf);
		SessionFactory sFactory = HibernateUtils.getSessionFactory();
		Session session = sFactory.openSession();
		Transaction tx = session.beginTransaction();
		Users_Inf users_Inf2 = get(users_Inf.getUser_name());
		if (users_Inf2 != null) {//保存的这个账号已经存在了！
			session.close();
			return null;
		} else {//账号不存在，可以新增
			session.save(users_Inf);
			tx.commit();
			session.close();
			return users_Inf.getUser_name();
		}
	}

	@Override
	public void update(Users_Inf users_Inf) {
		// TODO Auto-generated method stub
		SessionFactory sFactory = HibernateUtils.getSessionFactory();
		Session session = sFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(users_Inf);
		tx.commit();
		session.close();
	}

	@Override
	public int delete(String user_name) {
		// TODO Auto-generated method stub
		SessionFactory sFactory = HibernateUtils.getSessionFactory();
		Session session = sFactory.openSession();
		Transaction tx = session.beginTransaction();
		int count = session.createQuery("delete Users_Inf u where u.user_name= :name")
				.setString("name", user_name)
				.executeUpdate();
		tx.commit();
		session.close();
		return count;
	}

}
