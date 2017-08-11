package com.zzz.bookstore.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao {
	
		   public List getAll(Class clzz);
		   public Object getById(Class clzz,Serializable id);
		   public List getByDetachedCriteria(DetachedCriteria da);
		   public void save(Object obj);
		   public void delete(Object obj);
		   public void update(Object obj);
		}


