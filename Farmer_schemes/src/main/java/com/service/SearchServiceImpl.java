package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.event.TransactionalEventListener;

import com.dao.SearchDao;
import com.model.Bidder;
import com.model.Farmer;
@Service("searchService")
public class SearchServiceImpl implements SearchService {

	@Autowired
	public SearchDao searchDao;
	
	@Transactional
	public Farmer searchFarmer(Farmer farmer)
	{
		Farmer farmer1=searchDao.searchFarmer(farmer);
		return farmer1;
	}
	
	@Transactional
	public Bidder searchBidder(Bidder bidder)
	{
		Bidder bidder1=searchDao.searchBidder(bidder);
		return bidder1;
	}
	
	@Transactional
	public Farmer farmerApprove(String app, String action) {
		Farmer fm=searchDao.farmerApprove(app,action);
		return fm;
	}
	
	@Transactional
	public Bidder bidderApprove(String app, String action) {
		Bidder fm=searchDao.bidderApprove(app,action);
		return fm;
		
	}
}
