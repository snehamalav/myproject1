package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CropDao;
import com.model.Farmer;
import com.model.SellRequest;

@Service("cropService")
public class CropServiceImpl implements CropService {

	@Autowired
	public CropDao cropDao;
		@Transactional
		public List<SellRequest> getCrop()
		{
		    List<SellRequest> clist=cropDao.getCrop();
			return clist;		
		}
	
		@Transactional
		public SellRequest cropApprove(int app, String action){
			SellRequest fm=cropDao.cropApprove(app,action);
			return fm;
		}
		
		public SellRequest searchCrop(SellRequest sellrequest) {
			SellRequest crop1=cropDao.searchCrop(sellrequest);
			return crop1;
		}
}
