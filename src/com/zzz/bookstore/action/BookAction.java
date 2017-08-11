package com.zzz.bookstore.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionSupport;
import com.zzz.bookstore.biz.BookBiz;
import com.zzz.bookstore.biz.OrdersBiz;
import com.zzz.bookstore.entity.Book;
import com.zzz.bookstore.entity.Orders;
import com.zzz.bookstore.entity.Typee;

public class BookAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;
	private BookBiz bbiz;
	private Book h;

	public Book getH() {
		return h;
	}

	public void setH(Book h) {
		this.h = h;
	}
	
	public String one(){
		DetachedCriteria dc= DetachedCriteria.forClass(Book.class);
		System.out.println("dw");
		if(h.getBname()!=null){
			dc.add(Restrictions.like("bname","%"+ h.getBname()+"%"));
		}
		if(h.getTypee().getId()!=0){
			//给房屋中typee起别名 ***** 
			dc.createAlias("typee", "t");
			dc.add(Restrictions.eq("t.id", h.getTypee().getId()));
		}
		if(h.getPrice()!=0){
			int a = (int)h.getPrice().floatValue();
			switch(a){
			case 1:dc.add(Restrictions.lt("price", 50.0f));
				break;
			case 2:dc.add(Restrictions.between("price", 51.0f, 100.0f));
				break;
			case 3:dc.add(Restrictions.gt("price", 100.0f));
				break;
			}
			
		}

		List<Book> list = bbiz.getByDetachedCriteria(dc);
		session.put("clist", list);
		return "search";
	}
	public String save(){
		bbiz.save(h);
		myupdate();
		return SUCCESS;
	}
	
	public void  myupdate(){
		List<Book> list=bbiz.getAll(Book.class);
		session.put("hlist", list);
	}

	public String showAll(){
		List<Orders> list=bbiz.getAll(Book.class);
		session.put("hlist", list);
		return "client";
	}
	
	/*public String update(){
		Book temp = (Book) bbiz.getById(Book.class, book.getIsbn());
		session.put("bookinfo", temp);
		DetachedCriteria da;
		List<Typee> typ = bbiz.getByDetachedCriteria(da)；
		
		return SUCCESS;
	}*/
	
	public BookBiz getBbiz() {
		return bbiz;
	}
	public void setBbiz(BookBiz bbiz) {
		this.bbiz = bbiz;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
		
	}
	
	

}
