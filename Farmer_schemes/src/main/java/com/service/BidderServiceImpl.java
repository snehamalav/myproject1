package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BidderDao;
import com.model.Bidder;
import com.model.Bidding;
@Service("bidderService")
public class BidderServiceImpl implements BidderService{

	@Autowired
	public BidderDao bidderDao;
	
	@Transactional
	public boolean register(Bidder bidder) {
		return bidderDao.register(bidder);
	}
	@Transactional
	public boolean validateBidder(Bidder bidder) {
		boolean flag=bidderDao.validateBidder(bidder);
		return flag;
	}

	
	/*public Farmer validateUser(Bidder bidder) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Bidder> getUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean changepwd(String username, String opwd, String npwd) {
		// TODO Auto-generated method stub
		return false;
	}*/

}
