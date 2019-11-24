package com.dao;

import com.model.Bidder;
import com.model.Farmer;
import com.model.SellRequest;

public interface SearchDao {


	public Farmer searchFarmer(Farmer farmer);
	public Bidder searchBidder(Bidder bidder);
	public SellRequest searchSellRequest(SellRequest request1);

	public Bidder bidderApprove(String app, String action);
	public Farmer farmerApprove(String app, String action);
}
