package com.lxc.bookService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import com.lxc.bookDAO.BookDAO;
import com.lxc.bookInf.BooksInf;
import com.opensymphony.xwork2.ActionContext;

public class BookSearchServiceImpl implements BookSearchService {
	private BookDAO bookSearchDAO;
	public void setBookSearchDAO(BookDAO bookSearchDAO) {
		this.bookSearchDAO = bookSearchDAO;
	}
	@Override
	public void search(BooksInf booksInf) {
		// TODO 自动生成的方法存根
		String bookName = booksInf.getBookName();
		String bookAuthor = booksInf.getBookAuthor();
		ActionContext ct = ActionContext.getContext();
		List<BooksInf> list = new ArrayList<BooksInf>();
		if (!bookName.equals("") && !bookAuthor.equals("")) {//书名+作者，只搜索到一本书
			BooksInf booksInf2 = bookSearchDAO.bookSearchByParams(bookName, bookAuthor);
			list.add(booksInf2);
		} else {
			if (!bookName.equals("") && bookAuthor.equals("")) {
				list = bookSearchDAO.bookSearch("name", bookName);
			} else {
				list = bookSearchDAO.bookSearch("author", bookAuthor);
			}
		}
		ct.put("resultMap", list);//查询返回的记录放在List中，放入request返回到jsp页面
	}
	
}
