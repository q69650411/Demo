package com.zzz.bookstore.biz;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseBiz {
	public List getAll(Class clzz);
	   public Object getById(Class clzz,Serializable id);
	   public List getByDetachedCriteria(DetachedCriteria da);
	   public void save(Object obj);
	   public void delete(Object obj);
	   public void update(Object obj);

}
