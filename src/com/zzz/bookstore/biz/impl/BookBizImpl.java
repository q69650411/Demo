package com.zzz.bookstore.biz.impl;

import com.zzz.bookstore.biz.BookBiz;
import com.zzz.bookstore.dao.BookDao;

public class BookBizImpl extends BaseBizImpl implements BookBiz {
       BookDao bdao;

	public BookDao getBdao() {
		return bdao;
	}

	public void setBdao(BookDao bdao) {
		this.bdao = bdao;
	}
       
}
