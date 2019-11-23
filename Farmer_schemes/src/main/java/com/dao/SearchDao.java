package com.dao;

import com.model.Bidder;
import com.model.Farmer;

public interface SearchDao {


	public Farmer searchFarmer(Farmer farmer);
	public Bidder searchBidder(Bidder bidder);

	public Bidder bidderApprove(String app, String action);
	public Farmer farmerApprove(String app, String action);
}
