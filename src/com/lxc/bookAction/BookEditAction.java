package com.lxc.bookAction;

import com.lxc.bookInf.BooksInf;
import com.lxc.bookService.BookManageService;
import com.opensymphony.xwork2.Action;

public class BookEditAction implements Action {
	private BookManageService bookManageService;
	private BooksInf booksInf;
	private String tips;
	public String getTips() {
		return tips;
	}
	public void setTips(String tips) {
		this.tips = tips;
	}
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
		if (bookManageService.editBook(booksInf.getBookName(), booksInf.getBookAuthor())) {
			return SUCCESS;
		} else {
			setTips("请输入书名或作者名其中的至少一个条件...");
			return ERROR;
		}
	}

}
