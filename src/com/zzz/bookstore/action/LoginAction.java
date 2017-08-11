package com.zzz.bookstore.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionSupport;
import com.zzz.bookstore.biz.UsersBiz;
import com.zzz.bookstore.entity.Book;
import com.zzz.bookstore.entity.Orders;
import com.zzz.bookstore.entity.Typee;
import com.zzz.bookstore.entity.Users;
public class LoginAction extends ActionSupport implements SessionAware {

	
	private UsersBiz ubiz;
	private String myname;
	private String pwd;
	
	public String execute() throws Exception {
		String result="error";
		String re = ubiz.login(myname, pwd);
		if("admin".equals(re)){
			List<Orders> list = ubiz.getAll(Orders.class);
			List<Book> list1 = ubiz.getAll(Book.class);
			List<Typee> list2 = ubiz.getAll(Typee.class);
			List<Users> list3 = ubiz.getAll(Users.class);
			result="admin";
			session.put("olist", list);
			session.put("blist", list1);
			session.put("tlist", list2);
			session.put("ulist", list3);
			}
		else if("user".equals(re)){
			DetachedCriteria da=DetachedCriteria.forClass(Users.class);
			da.add(Restrictions.eq("username", myname));
			List<Users> list1 = ubiz.getByDetachedCriteria(da);
			Users u = list1.get(0);
			session.put("user", u);
			DetachedCriteria das=DetachedCriteria.forClass(Orders.class);
			das.add(Restrictions.eq("users", u));
			List<Orders> list = ubiz.getByDetachedCriteria(das);
			List<Book> list2 = ubiz.getAll(Book.class);
			List<Typee> list3 = ubiz.getAll(Typee.class);
			session.put("blist", list2);
			session.put("olist", list);
			session.put("tlist", list3);
			result="user";
		}
		else{
			session.put("rerror", re);
		}
		
		return result;
		}
	
	public UsersBiz getUbiz() {
		return ubiz;
	}

	public void setUbiz(UsersBiz ubiz) {
		this.ubiz = ubiz;
	}

	public String getMyname() {
		return myname;
	}

	public void setMyname(String myname) {
		this.myname = myname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
		
	}
	
	

}
