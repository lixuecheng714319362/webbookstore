package com.lxc.bookService;

import com.lxc.bookDAO.BookDAO;
import com.lxc.bookInf.BooksInf;

public class BookManageServiceImpl implements BookManageService {
	private BookDAO bookManageDAO;
	public void setBookManageDAO(BookDAO bookManageDAO) {
		this.bookManageDAO = bookManageDAO;
	}

	@Override
	public void addBook(BooksInf booksInf) {
		// TODO 自动生成的方法存根
		bookManageDAO.bookAdd(booksInf);
	}

	@Override
	public boolean deleteBook(String bookName, String bookAuthor) {
		int count = bookManageDAO.bookDelete(bookName, bookAuthor);
		if (count > 0) {
			return true;
		} else {
			return false;
		}
	}
	
}
