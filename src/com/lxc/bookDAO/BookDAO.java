package com.lxc.bookDAO;

import com.lxc.bookInf.BooksInf;

public interface BookDAO {
	BooksInf bookSearch(String key, String value);
}