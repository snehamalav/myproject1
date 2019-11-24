package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

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
}