package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.sellDao;

import com.model.SellRequest;
@Service("sellservice")
public class sellServiceImpl implements sellService {

	@Autowired
	public sellDao selldao;
	
	@Transactional
	public boolean insertSellRequest(SellRequest request) {
	    boolean flag= selldao.insertSellRequest(request);

	    return flag;
}

}
