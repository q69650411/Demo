package com.zzz.bookstore.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zzz.bookstore.dao.BaseDao;

public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao {

	@Override
	public List getAll(Class clzz) {
		return this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(clzz));
	}

	@Override
	public Object getById(Class clzz, Serializable id) {
		return this.getHibernateTemplate().get(clzz, id);
	}

	@Override
	public List getByDetachedCriteria(DetachedCriteria da) {
		return this.getHibernateTemplate().findByCriteria(da);
	}

	@Override
	public void save(Object obj) {
	   this.getHibernateTemplate().save(obj);	
	}

	@Override
	public void delete(Object obj) {
		 this.getHibernateTemplate().delete(obj);	
		
	}

	@Override
	public void update(Object obj) {
		 this.getHibernateTemplate().update(obj);		
		
	}

}
