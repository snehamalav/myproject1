package com.service;

import com.model.Bidder;
import com.model.Farmer;
import com.model.SellRequest;

public interface SearchService {

	public Farmer searchFarmer(Farmer farmer);
	public Bidder searchBidder(Bidder bidder);
	public Bidder bidderApprove(String app, String action);
	public Farmer farmerApprove(String app, String action);
	

	public SellRequest searchSellRequest(SellRequest request1);
}
