package com.dao;

import java.util.List;

import com.model.Farmer;
import com.model.SellRequest;

public interface CropDao {
	public List<SellRequest> getCrop();
	public SellRequest searchCrop(SellRequest sellrequest);
	public SellRequest cropApprove(int app, String action);
}