package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.model.Farmer;
import com.model.SellRequest;

@Repository("cropDao")
public class CropDaoImpl implements CropDao {
	@PersistenceContext
	EntityManager em;
	public List<SellRequest> getCrop(){
	
		@SuppressWarnings("unchecked")
		List<SellRequest> clist=em.createQuery("Select c from SellRequest c").getResultList();
		return clist;
		
	}

	public SellRequest searchCrop(SellRequest sellrequest)
	{
		SellRequest crop1 =(SellRequest)em.createQuery("Select c from SellRequest c where c.c_id=:email").setParameter("email",sellrequest.getC_id()).getSingleResult();
		return crop1;
	}

	
	public SellRequest cropApprove(int app, String action) 
	{
		String sql = "update SellRequest c set c.status=:action where c.c_id=:app";
		Query query = em.createQuery(sql).setParameter("app", app).setParameter("action", action);
		int result=query.executeUpdate();
		SellRequest fm = em.find(SellRequest.class, app);
		return fm;
	}

/*	public SellRequest cropApprove(int app, String action) {
		String sql = "update SellRequest c set c.status=:action where c.c_id=:app";
		Query query = em.createQuery(sql).setParameter(app, app).setParameter("action", action);
		int result=query.executeUpdate();
		SellRequest fm = em.find(SellRequest.class, app);
		return fm;
	}*/
	
}
