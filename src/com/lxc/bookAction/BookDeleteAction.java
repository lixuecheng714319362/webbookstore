package com.lxc.bookAction;

import com.lxc.bookInf.BooksInf;
import com.lxc.bookService.BookManageService;
import com.opensymphony.xwork2.Action;

public class BookDeleteAction implements Action {
	private BookManageService bookManageService;
	private BooksInf booksInf;
	public BooksInf getBooksInf() {
		return booksInf;
	}
	public void setBooksInf(BooksInf booksInf) {
		this.booksInf = booksInf;
	}
	public BookManageService getBookManageService() {
		return bookManageService;
	}
	public void setBookManageService(BookManageService bookManageService) {
		this.bookManageService = bookManageService;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if (bookManageService.deleteBook(booksInf.getBookName(), booksInf.getBookAuthor())) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

}
