package com.dao;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.model.SellRequest;
@Repository("selldao")
public class sellDaoImpl implements sellDao {
   
	@PersistenceContext
	EntityManager em;
	public boolean insertSellRequest(SellRequest request) {
		  boolean flag=false;
		    try {
		    	
		    	
		    	em.persist(request);
		    	System.out.println("end");
		    	flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);  
		    	}
		    return flag;
	}

}
