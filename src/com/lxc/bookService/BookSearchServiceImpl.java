package com.lxc.bookService;

import com.lxc.bookDAO.BookDAO;
import com.lxc.bookInf.BooksInf;

public class BookSearchServiceImpl implements BookSearchService {
	private BookDAO bookSearchDAO;
	@Override
	public boolean search(BooksInf booksInf) {
		// TODO 自动生成的方法存根
		String bookName = booksInf.getBookName();
		String bookAuthor = booksInf.getBookAuthor();
		if ("".equals(bookName) && "".equals(bookAuthor)) {
			return false;
		} else if (!"".equals(bookName) && !"".equals(bookAuthor)) {//书名+作者，只搜索到一本书
			BooksInf booksInf2 = bookSearchDAO.bookSearchByParams(bookName, bookAuthor);
			
			return true;
		} else {
			
			return true;
		}
	}
	
}
