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
	public BookManageService bookManageService() {
		return bookManageService;
	}
	public void setBookAddService(BookManageService bookManageService) {
		this.bookManageService = bookManageService;
	}
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		System.out.println(booksInf.getBookAuthor());
		bookManageService.addBook(booksInf);
		return SUCCESS;
	}
}
