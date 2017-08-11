package com.zzz.bookstore.biz.impl;

import com.zzz.bookstore.biz.OrdersBiz;
import com.zzz.bookstore.dao.OrdersDao;

public class OrdersBizImpl extends BaseBizImpl implements OrdersBiz{
   OrdersDao odao;

public OrdersDao getOdao() {
	return odao;
}

public void setOdao(OrdersDao odao) {
	this.odao = odao;
}
   
}
