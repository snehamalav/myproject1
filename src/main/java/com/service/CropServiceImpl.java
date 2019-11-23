package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CropDao;
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
}
