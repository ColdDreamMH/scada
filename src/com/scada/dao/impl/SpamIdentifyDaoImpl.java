package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.SpamIdentifyDao;
import com.scada.domain.SpamIdentify;

public class SpamIdentifyDaoImpl extends HibernateDaoSupport implements SpamIdentifyDao {

	@Override
	public void save(SpamIdentify spamIdentify) {
		this.getHibernateTemplate().save(spamIdentify);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<SpamIdentify> getAll() {
		String hql = "from SpamIdentify si";
		return (List<SpamIdentify>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
