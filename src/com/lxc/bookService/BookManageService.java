package com.lxc.bookService;

import com.lxc.bookInf.BooksInf;

public interface BookManageService {
	void addBook(BooksInf booksInf);
	
	boolean deleteBook(String bookName, String bookAuthor);
}
