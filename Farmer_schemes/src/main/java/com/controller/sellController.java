package com.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Farmer;
import com.model.SellRequest;
import com.service.sellService;

@Controller("sellController")
public class sellController {
@Autowired
public sellService sellservice;
	
@RequestMapping(value = "/place_sell_req", method = RequestMethod.GET)
public ModelAndView showRegister2(HttpServletRequest request, HttpServletResponse response) {
  ModelAndView mav = new ModelAndView("place_sell_req");
  mav.addObject("request", new SellRequest());
  return mav;
}
	
	

@RequestMapping(value = "/successrequest", method = RequestMethod.POST)
public ModelAndView addfarmer2(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws ParseException{
	  String crop_type=request.getParameter("crop_type");
	  String crop_name=request.getParameter("crop_name");
	  String fertilizer_type=request.getParameter("fertilizer_type");
	  int quantity=Integer.parseInt(request.getParameter("quantity"));
	 SimpleDateFormat formatter1=new SimpleDateFormat("yyyy-MM-dd");
	 Date end_date=formatter1.parse(request.getParameter("end_date"));
	 
	  int base_price=Integer.parseInt(request.getParameter("base_price"));
	  int increment_value=Integer.parseInt(request.getParameter("increment_value"));
	  
	  
	  Farmer farmer=new Farmer();
	  String f_email =(String)session.getAttribute("email"); 
	  System.out.println("ff="+f_email);
	  farmer.setF_email(f_email);
	  
	  
	  SellRequest irequest=new SellRequest();
	  irequest.setCrop_name(crop_name);
	  irequest.setBase_price(base_price);
	  irequest.setCrop_type(crop_type);
	  irequest.setFertilizer_type(fertilizer_type);
	  irequest.setIncrement_value(increment_value);
	  irequest.setQuantity(quantity);
	  irequest.setEnd_date(end_date);
	  irequest.setStart_date( new Date());
	  irequest.setStatus("N");
	  irequest.setFarmer(farmer);
	  			  
	boolean flag=sellservice.insertSellRequest(irequest);

  if(flag) {
  ModelAndView mav = new ModelAndView("welcome");
  mav.addObject("login", new SellRequest());
  
 
  session.setAttribute("f_email", farmer.getF_email());
  return mav;
  }
  else {
  	ModelAndView mav = new ModelAndView("place_sell_req");
      mav.addObject("farmer", new SellRequest());
      mav.addObject("status","Sorry! Registration in incomplete");
      return mav;	
  }
}
}
