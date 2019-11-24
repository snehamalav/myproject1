package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BiddingDao;
import com.model.SellRequest;

@Service("biddingService")
public class BiddingServiceImpl  implements BiddingService {

	@Autowired
	public BiddingDao biddingDao;
	
	@Transactional
	public List<Object[]> getBiddingList()
	{
		List<Object[]> blist=biddingDao.getBiddingList();
		return blist;
	}
}
