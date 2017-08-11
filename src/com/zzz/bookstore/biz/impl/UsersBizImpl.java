package com.zzz.bookstore.biz.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.zzz.bookstore.biz.UsersBiz;
import com.zzz.bookstore.dao.UsersDao;
import com.zzz.bookstore.entity.Users;

public class UsersBizImpl extends BaseBizImpl implements UsersBiz {
   UsersDao udao;

public UsersDao getUdao() {
	return udao;
}

public void setUdao(UsersDao udao) {
	this.udao = udao;
}

@Override
public String login(String name, String pwd) {
	DetachedCriteria da=DetachedCriteria.forClass(Users.class);
	da.add(Restrictions.eq("username", name));
	List<Users> list = udao.getByDetachedCriteria(da);
	String res="";
	if(list!=null&&list.size()>0){
		Users u = list.get(0);
		if(pwd.equals(u.getPsw())){
			if(u.getIsadmin()==true)
				return res="admin";
			else
				return res="user";
		}
		else{
			res="密码错误";
		}
		
	}else{
		 res ="用户不存在";
	}
	System.out.println(res);
	return res;
}


}