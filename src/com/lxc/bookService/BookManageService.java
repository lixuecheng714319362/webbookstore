package com.lxc.bookService;

import com.lxc.bookInf.BooksInf;

public interface BookManageService {
	boolean addBook(BooksInf booksInf);
	
	boolean deleteBook(String bookName, String bookAuthor);
	
	boolean editBook(String bookName, String bookAuthor);
}
