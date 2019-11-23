package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.model.Admin;
import com.model.Bidder;
import com.model.Farmer;
@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
	@PersistenceContext
	EntityManager em;
	public List<Farmer> getFarmers(){
	
		@SuppressWarnings("unchecked")
		List<Farmer> list=em.createQuery("Select f from Farmer f").getResultList();
		return list;
		
	}
	
	public List<Bidder> getBidder(){
		
		@SuppressWarnings("unchecked")
		List<Bidder> alist=em.createQuery("Select b from Bidder b").getResultList();
		return alist;
		
	}
	
	public boolean validateAdmin(Admin admin)
	{

		boolean result=false;
		try{
	
	    Admin u=em.find(Admin.class,admin.getUserid());
		System.out.println(result+"1");
	   // System.out.println(admin.getUserid());
		
		if(u!=null)
		{
			if(u.getPassword().equals(admin.getPassword()))
				{
				result=true;
			    //System.out.println(result+"2");
				}
		}
		//System.out.println(result+"3");
		em.close();
	}
		catch(Exception e)
		{
			System.out.println("error:"+e);
		}
		//System.out.println(result+"4");
		return result;
		
	}
	
}

