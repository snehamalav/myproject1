package com.dao;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.model.Bidding;
import com.model.SellRequest;



@Repository("biddingDao")
public class BiddingDaoImpl implements BiddingDao {
	@PersistenceContext
	EntityManager em;
	@SuppressWarnings("unchecked")
	public List<Bidding> getBiddingList()
	{
	
		Query q=em.createNativeQuery("select * sell where sysdate between start_date and end_date ");
		
		List<Bidding> list=q.getResultList();
		
		return list;
	}

		
		
}
