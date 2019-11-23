package com.service;

import java.util.List;

import com.model.Admin;
import com.model.Bidder;
import com.model.Farmer;

public interface AdminService {
	public List<Farmer> getFarmers();
	public List<Bidder> getBidder();
	public boolean validateAdmin(Admin admin);
}
