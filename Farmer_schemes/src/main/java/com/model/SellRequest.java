package com.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="sell")
public class SellRequest {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int c_id;
	private String crop_type;
	private String crop_name;
	private String fertilizer_type;
	private int quantity;
	private int base_price;
	private int increment_value;
	@Temporal(TemporalType.DATE)
	private Date start_date;
	@Temporal(TemporalType.DATE)
	private Date end_date;
	private String status;
	@JoinColumn(name="f_email")
	@ManyToOne(fetch = FetchType.EAGER )
	private Farmer farmer;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getCrop_type() {
		return crop_type;
	}
	public void setCrop_type(String crop_type) {
		this.crop_type = crop_type;
	}
	public String getCrop_name() {
		return crop_name;
	}
	public void setCrop_name(String crop_name) {
		this.crop_name = crop_name;
	}
	public String getFertilizer_type() {
		return fertilizer_type;
	}
	public void setFertilizer_type(String fertilizer_type) {
		this.fertilizer_type = fertilizer_type;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getBase_price() {
		return base_price;
	}
	public void setBase_price(int base_price) {
		this.base_price = base_price;
	}
	public int getIncrement_value() {
		return increment_value;
	}
	public void setIncrement_value(int increment_value) {
		this.increment_value = increment_value;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Farmer getFarmer() {
		return farmer;
	}
	public void setFarmer(Farmer farmer) {
		this.farmer = farmer;
	}
	public SellRequest() {
		super();
	}
	@Override
	public String toString() {
		return "SellRequest [c_id=" + c_id + ", crop_type=" + crop_type + ", crop_name=" + crop_name
				+ ", fertilizer_type=" + fertilizer_type + ", quantity=" + quantity + ", base_price=" + base_price
				+ ", increment_value=" + increment_value + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", status=" + status + ", farmer=" + farmer + "]";
	}
	
	
	
}
