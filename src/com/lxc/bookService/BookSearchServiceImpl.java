package com.lxc.bookService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import com.lxc.bookDAO.BookDAO;
import com.lxc.bookInf.BooksInf;
import com.opensymphony.xwork2.ActionContext;

public class BookSearchServiceImpl implements BookSearchService {
	private BookDAO bookSearchDAO;
	@Override
	public boolean search(BooksInf booksInf) {
		// TODO 自动生成的方法存根
		String bookName = booksInf.getBookName();
		String bookAuthor = booksInf.getBookAuthor();
		ActionContext ct = ActionContext.getContext();
		if ("".equals(bookName) && "".equals(bookAuthor)) {
			return false;
		} else if (!"".equals(bookName) && !"".equals(bookAuthor)) {//书名+作者，只搜索到一本书
			BooksInf booksInf2 = bookSearchDAO.bookSearchByParams(bookName, bookAuthor);
			ct.put("resultMap", booksInf2);
			return true;
		} else {
			List list = new ArrayList<>();
			if (!"".equals(bookName)) {
				list = bookSearchDAO.bookSearch("name", bookName);
			} else {
				list = bookSearchDAO.bookSearch("author", bookAuthor);
			}
			ct.put("resultMap", list);//查询可能返回多条记录，放在List中，放入request返回到jsp页面
			return true;
		}
	}
	
}
