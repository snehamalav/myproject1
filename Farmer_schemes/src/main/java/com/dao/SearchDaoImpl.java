package com.dao;



import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.model.Bidder;
import com.model.Farmer;
import com.model.SellRequest;
@Repository("searchDao")
public class SearchDaoImpl implements SearchDao {
	@PersistenceContext
	EntityManager em;
	
	public Farmer searchFarmer(Farmer farmer)
	{
		Farmer farmer1 =(Farmer)em.createQuery("Select f from Farmer f where f.f_email=:email").setParameter("email",farmer.getF_email()).getSingleResult();
		return farmer1;
	}
	
	public Bidder searchBidder(Bidder bidder)
	{
		Bidder bidder1 =(Bidder)em.createQuery("Select b from Bidder b where b.b_email=:email").setParameter("email",bidder.getB_email()).getSingleResult();
		return bidder1;
	}
	
	
	public Farmer farmerApprove(String app, String action)
	{
		String sql = "update Farmer f set f.status=:action where f.f_email=:app";
		Query query = em.createQuery(sql).setParameter("app", app).setParameter("action", action);
		int result=query.executeUpdate();
		
		Farmer fm = em.find(Farmer.class, app);
		return fm;
	}


	public Bidder bidderApprove(String app, String action)
	{
		String sql = "update Bidder b set b.status=:action where b.b_email=:app";
		Query query = em.createQuery(sql).setParameter("app", app).setParameter("action", action);
		int result=query.executeUpdate();
		Bidder fm = em.find(Bidder.class, app);
		return fm;
		
	}
	
	public SellRequest searchSellRequest(SellRequest request1)
	{
		
		
		//SellRequest request3 =(SellRequest)em.createQuery("Select s from SellRequest s where s.c_id=:c_id").setParameter("c_id",request1.getC_id()).getSingleResult();
		/*System.out.println("cid"+request3.getC_id());
		System.out.println("name"+request3.getCrop_name());
		System.out.println("type"+request3.getCrop_type());
		*/
		SellRequest request3 =em.find(SellRequest.class, request1.getC_id());
		return request3;
	}
}
