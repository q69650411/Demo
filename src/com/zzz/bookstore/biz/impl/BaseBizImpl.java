package com.zzz.bookstore.biz.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.zzz.bookstore.biz.BaseBiz;
import com.zzz.bookstore.dao.BaseDao;

public class BaseBizImpl implements BaseBiz{
	
BaseDao bdao;
	

	public BaseDao getBdao() {
		return bdao;
	}

	public void setBdao(BaseDao bdao) {
		this.bdao = bdao;
	}

	@Override
	public List getAll(Class clzz) {
		// TODO Auto-generated method stub
		return bdao.getAll(clzz);
	}

	@Override
	public Object getById(Class clzz, Serializable id) {
		// TODO Auto-generated method stub
		return bdao.getById(clzz, id);
	}

	@Override
	public List getByDetachedCriteria(DetachedCriteria da) {
		// TODO Auto-generated method stub
		return bdao.getByDetachedCriteria(da);
	}

	@Override
	public void save(Object obj) {
		// TODO Auto-generated method stub
		bdao.save(obj);
		
	}

	@Override
	public void delete(Object obj) {
		// TODO Auto-generated method stub
		bdao.delete(obj);
		
	}

	@Override
	public void update(Object obj) {
		// TODO Auto-generated method stub
		bdao.update(obj);
		
	}

}
