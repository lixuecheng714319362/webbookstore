package com.lxc.bookDAO;

import java.util.List;

import com.lxc.bookInf.BooksInf;

public interface BookDAO {
	List bookSearch(String key, String value);

	BooksInf bookSearchByParams(String bookName, String bookAuthor);
	
	int bookDelete(String bookName, String bookAuthor);
	
	void bookAdd(BooksInf booksInf);
	
	void bookUpdate(BooksInf booksInf);
}
