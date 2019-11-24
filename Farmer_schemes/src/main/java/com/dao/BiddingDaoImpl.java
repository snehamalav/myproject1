package com.dao;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;

import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;


import com.model.SellRequest;



@Repository("biddingDao")
public class BiddingDaoImpl implements BiddingDao {
	@PersistenceContext
	EntityManager em;
	@SuppressWarnings("unchecked")
	public List<Object[]> getBiddingList()
	{
	
		Query q=em.createNativeQuery("select * from sell where sysdate between start_date and end_date");
		/*List<Object[]> res = query.getResultList();*/
		List<Object[]> list=q.getResultList();
	
		return list;
	}

		
		
}
