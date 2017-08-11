package com.zzz.bookstore.action;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionSupport;
import com.zzz.bookstore.biz.OrdersBiz;
import com.zzz.bookstore.entity.*;

public class OrdersAction extends ActionSupport implements SessionAware {
	
	public Map<String, Object> session;
	private OrdersBiz obiz;
	private Orders temp;
	private Orders h;
    private Orders tt;
	
	        
	
    public String update(){
    	Timestamp ts = new Timestamp(System.currentTimeMillis());   
		Date date= new Date();//创建一个时间对象，获取到当前的时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置时间显示格式
		String str = sdf.format(date);//将当前时间格式化为需要的类型
		        try {   
		            ts = Timestamp.valueOf(str);   
		            System.out.println(ts);   
		        } catch (Exception e) {   
		            e.printStackTrace();   
		        }

		h.setOrdertime(tt.getOrdertime());
    	obiz.update(h);
    	
    	myupdate();
    	return SUCCESS;
    }
    
    public String order(){
    	Timestamp ts = new Timestamp(System.currentTimeMillis());   
		Date date= new Date();//创建一个时间对象，获取到当前的时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置时间显示格式
		String str = sdf.format(date);//将当前时间格式化为需要的类型
		        try {   
		            ts = Timestamp.valueOf(str);   
		            System.out.println(ts);   
		        } catch (Exception e) {   
		            e.printStackTrace();   
		        }
		        
		temp.setOrdertime(ts);
		
		Users u = (Users) session.get("user");
		temp.setUsers(u);
		obiz.save(temp);
		
		DetachedCriteria da=DetachedCriteria.forClass(Orders.class);
		da.add(Restrictions.eq("users.id", u.getId()));
		List<Orders> list1 = obiz.getByDetachedCriteria(da);
		session.put("olist", list1);
		return "order";
    }
    
    public String updateone(){
    	tt = (Orders) obiz.getById(Orders.class,temp.getId());
    	session.put("adminh", tt);
    	return "one";
    } 
    
	public String save(){
		Timestamp ts = new Timestamp(System.currentTimeMillis());   
		Date date= new Date();//创建一个时间对象，获取到当前的时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置时间显示格式
		String str = sdf.format(date);//将当前时间格式化为需要的类型
		        try {   
		            ts = Timestamp.valueOf(str);   
		            System.out.println(ts);   
		        } catch (Exception e) {   
		            e.printStackTrace();   
		        }
		        
		temp.setOrdertime(ts);
		
		Users u = (Users) session.get("user");
		temp.setUsers(u);
		obiz.save(temp);
		myupdate();
		return SUCCESS;
	}
	


	public Orders getTemp() {
		return temp;
	}

	public void setTemp(Orders temp) {
		this.temp = temp;
	}

	public String showAll(){
		List<Orders> list=obiz.getAll(Orders.class);
		session.put("olist", list);
		return "client";
	}
	
	public void  myupdate(){
		List<Orders> list=obiz.getAll(Orders.class);
		session.put("olist", list);
	}
	
	public String userdelete(){
		Orders o = (Orders) obiz.getById(Orders.class, temp.getId());
		obiz.delete(o);
	
		
		DetachedCriteria da=DetachedCriteria.forClass(Orders.class);
		da.add(Restrictions.eq("users.id", o.getUsers().getId()));
		List<Orders> list1 = obiz.getByDetachedCriteria(da);
		session.put("olist", list1);
		return "userdelete";
	}
	
	
	public String delete(){
		Orders o = (Orders) obiz.getById(Orders.class, temp.getId());
		obiz.delete(o);
		myupdate();
		return SUCCESS;
	}

	public OrdersBiz getObiz() {
		return obiz;
	}

	public void setObiz(OrdersBiz obiz) {
		this.obiz = obiz;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
		
	}

}
