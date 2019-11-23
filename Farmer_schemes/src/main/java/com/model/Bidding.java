package com.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity

public class Bidding {

	@Id
	private int bid;
	private int bidding_amount;
	@Temporal(TemporalType.DATE)
	private Date sys_date;
	@JoinColumn(name="b_email")
	@ManyToMany()
	List<Bidder> bidder;
	@JoinColumn(name="c_id")
	@ManyToMany()
	List<SellRequest> request;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getBidding_amount() {
		return bidding_amount;
	}
	public void setBidding_amount(int bidding_amount) {
		this.bidding_amount = bidding_amount;
	}
	public Date getSys_date() {
		return sys_date;
	}
	public void setSys_date(Date sys_date) {
		this.sys_date = sys_date;
	}
	public List<Bidder> getBidder() {
		return bidder;
	}
	public void setBidder(List<Bidder> bidder) {
		this.bidder = bidder;
	}
	public List<SellRequest> getRequest() {
		return request;
	}
	public void setRequest(List<SellRequest> request) {
		this.request = request;
	}
	public Bidding() {
		super();
	}
	@Override
	public String toString() {
		return "Bidding [bid=" + bid + ", bidding_amount=" + bidding_amount + ", sys_date=" + sys_date + ", bidder="
				+ bidder + ", request=" + request + "]";
	}
	
	
	
}
