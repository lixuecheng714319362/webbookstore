package com.lxc.bookAction;

import com.lxc.bookInf.BooksInf;
import com.lxc.bookService.BookSearchService;
import com.opensymphony.xwork2.Action;

public class BookSearchAction implements Action{
	private BooksInf booksInf;
	private BookSearchService bookSearchService;
	public BooksInf getBooksInf() {
		return booksInf;
	}
	public void setBooksInf(BooksInf booksInf) {
		this.booksInf = booksInf;
	}
	public BookSearchService getBookSearchService() {
		return bookSearchService;
	}
	public void setBookSearchService(BookSearchService bookSearchService) {
		this.bookSearchService = bookSearchService;
	}
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		if (bookSearchService.search(booksInf)) {
			
		} else {
			
		}
		return null;
	}
}
