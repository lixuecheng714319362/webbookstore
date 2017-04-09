package com.lxc.bookAction;

import com.lxc.bookInf.BooksInf;
import com.lxc.bookService.BookManageService;
import com.opensymphony.xwork2.Action;

public class BookAddAction implements Action {
	private BooksInf booksInf;
	private BookManageService bookManageService;
	public BooksInf getBooksInf() {
		return booksInf;
	}
	public void setBooksInf(BooksInf booksInf) {
		this.booksInf = booksInf;
	}
	public void setBookManageService(BookManageService bookManageService) {
		this.bookManageService = bookManageService;
	}
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		if (bookManageService.addBook(booksInf)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
		
	}
}
