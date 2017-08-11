package com.zzz.bookstore.biz.impl;

import com.zzz.bookstore.biz.TypeeBiz;
import com.zzz.bookstore.dao.TypeeDao;

public class TypeeBizImpl extends BaseBizImpl implements TypeeBiz {
   TypeeDao tdao;

public TypeeDao getTdao() {
	return tdao;
}

public void setTdao(TypeeDao tdao) {
	this.tdao = tdao;
}
   
}
