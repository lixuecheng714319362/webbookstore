package com.lxc.bookDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.lxc.bookInf.BooksInf;
import com.lxc.hibernateUtils.HibernateUtils;

public class BookDAOImpl  extends HibernateDaoSupport implements BookDAO {

	/**
	 * 根据书名或作者名其中的一个条件查询书籍
	 */
	@Override
	public List bookSearch(String key, String value) {
		// TODO 自动生成的方法存根
		SessionFactory sf = HibernateUtils.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		String sql = "";
		if ("name".equals(key)) {
			sql = "from BooksInf bi where bi.bookName= :tmp";
		} else {
			sql = "from BooksInf bi where bi.bookAuthor= :tmp";
		}
		List list = session.createQuery(sql)
				.setString("tmp", value)
				.list();
		tx.commit();
		session.close();
		return list;
	}

	/**
	 * 根据书名和作者名两个条件查询书籍
	 * @return BooksInf
	 */
	@Override
	public BooksInf bookSearchByParams(String bookName, String bookAuthor) {
		// TODO 自动生成的方法存根
		SessionFactory sf = HibernateUtils.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		List list = session.createQuery("from BooksInf bi where bi.bookName= :name and bi.bookAuthor= :author")
				.setString("name", bookName)
				.setString("author", bookAuthor)
				.list();
		if (list.size() == 0) {
			return null;
		}
		BooksInf booksInf = (BooksInf) list.get(0);
		tx.commit();
		session.close();
		return booksInf;
	}

	/**
	 * 后台管理中根据书名和作者删除一本书籍
	 */
	@Override
	public int bookDelete(String bookName, String bookAuthor) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = HibernateUtils.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		int count = session.createQuery("delete BooksInf bi where bi.bookName= :name and bi.bookAuthor= :author")
				.setString("name", bookName)
				.setString("author", bookAuthor)
				.executeUpdate();
		tx.commit();
		session.close();
		return count;
	}

	/**
	 * 后台管理中增加一本新书
	 */
	@Override
	public void bookAdd(BooksInf booksInf) {
		// TODO Auto-generated method stub
		SessionFactory sf = HibernateUtils.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(booksInf);
		tx.commit();
		session.close();
	}

	/**
	 * 后台管理中更新一本书籍的信息
	 */
	@Override
	public void bookUpdate(BooksInf booksInf) {
		// TODO Auto-generated method stub
		SessionFactory sf = HibernateUtils.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.update(booksInf);
		tx.commit();
		session.close();
	}
}
