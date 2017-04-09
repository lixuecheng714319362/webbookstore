package com.lxc.bookService;

import java.util.ArrayList;
import java.util.List;

import com.lxc.bookDAO.BookDAO;
import com.lxc.bookInf.BooksInf;
import com.opensymphony.xwork2.ActionContext;

public class BookManageServiceImpl implements BookManageService {
	private BookDAO bookManageDAO;
	public void setBookManageDAO(BookDAO bookManageDAO) {
		this.bookManageDAO = bookManageDAO;
	}

	/**
	 * 新增书籍，
	 * 在新增操作之前先根据书名和作者判断数据库中是否已存在该书籍
	 */
	@Override
	public boolean addBook(BooksInf booksInf) {
		// TODO 自动生成的方法存根
		BooksInf booksInf2 = bookManageDAO.bookSearchByParams(booksInf.getBookName(), booksInf.getBookAuthor());
		if (booksInf2 != null) {
			return false;
		} else {
			bookManageDAO.bookAdd(booksInf);
			return true;
		}
	}

	/**
	 * 根据作者名和书名删除书籍
	 */
	@Override
	public boolean deleteBook(String bookName, String bookAuthor) {
		int count = bookManageDAO.bookDelete(bookName, bookAuthor);
		if (count > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 结合作者名和书名信息对书籍信息进行修改，
	 * 本方法负责查询后台数据库中的符合条件的书籍信息，并展现在列表中
	 * @param bookName
	 * @param bookAuthor
	 */
	public boolean editBook(String bookName, String bookAuthor) {
		ActionContext ct = ActionContext.getContext();
		List<BooksInf> list = new ArrayList<BooksInf>();
		if (bookName.equals("") && bookAuthor.equals("")) {
			return false;
		}
		if (!bookName.equals("") && !bookAuthor.equals("")) {
			BooksInf booksInf = bookManageDAO.bookSearchByParams(bookName, bookAuthor);
			list.add(booksInf);
		} else {
			if (!bookName.equals("") && bookAuthor.equals("")) {
				list = bookManageDAO.bookSearch("name", bookName);
			} else {
				list = bookManageDAO.bookSearch("author", bookAuthor);
			}
		}
		ct.put("resultMap", list);
		return true;
	}
}
