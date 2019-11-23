package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Bidder;
import com.model.Farmer;
import com.service.SearchService;

@Controller("mycontroller9")
public class SearchController {
	@Autowired
	public SearchService searchService;
	
	/*@RequestMapping(value = "/Adminhome", method = RequestMethod.GET)
	  public ModelAndView showRegis(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("Admin");
	    return mav;
	  }*/
	@RequestMapping(value = "/searchfarmer", method = RequestMethod.GET)
	  public ModelAndView showRegister2(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("searchfarmer");
	    return mav;
	  }
	
	@RequestMapping(value = "/searchedfarmer", method = RequestMethod.GET)
	  public ModelAndView showRegis66(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("searchedFarmer");
	    return mav;
	  }
	@RequestMapping(value="/searchedfarmer", method=RequestMethod.POST)
	public ModelAndView searchfarmers(HttpServletRequest request, HttpServletResponse response)
	{
		String email=request.getParameter("f_email");
		Farmer farmer=new Farmer();
		farmer.setF_email(email);
		Farmer farmer1=searchService.searchFarmer(farmer);
		ModelAndView mav=new ModelAndView("searchedFarmer");
		mav.addObject("farmer1",farmer1);
		return mav;
	}   
	
	@RequestMapping(value = "/searchbidder", method = RequestMethod.GET)
	  public ModelAndView showRe(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("searchbidder");
	    return mav;
	  }
	
	@RequestMapping(value = "/searchedbidder", method = RequestMethod.GET)
	  public ModelAndView showReg(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("searchedBidder");
	    return mav;
	  }
	
	
	@RequestMapping(value="/searchedbidder", method=RequestMethod.POST)
	public ModelAndView searchbidders(HttpServletRequest request, HttpServletResponse response)
	{
		String email=request.getParameter("b_email");
		Bidder bidder=new Bidder();
		bidder.setB_email(email);
		Bidder bidder1=searchService.searchBidder(bidder);
		ModelAndView mav=new ModelAndView("searchedBidder");
		mav.addObject("bidder1",bidder1);
		return mav;
	}   
	
	@RequestMapping(value="/approve1", method=RequestMethod.GET)
	public String farmerApprove1(HttpServletRequest request, HttpServletResponse response)
	{
		return "searchedFarmer";
	}
	
	
	@RequestMapping(value="/approve1", method=RequestMethod.POST)
	public ModelAndView farmerApprove(HttpServletRequest request, HttpServletResponse response)
	{
		String app =request.getParameter("email");
		String action= request.getParameter("action");
		//ModelAndView mav=new ModelAndView("searchedFarmer");
		Farmer fm = searchService.farmerApprove(app,action);
		ModelAndView mav = new ModelAndView("searchedFarmer");
		mav.addObject("farmer1",fm);
		return mav;
	} 
	
	
	@RequestMapping(value="/approve", method=RequestMethod.POST)
	public ModelAndView bidderApprove(HttpServletRequest request, HttpServletResponse response)
	{
		String app =request.getParameter("email");
		String action= request.getParameter("action");
		//ModelAndView mav=new ModelAndView("searchedFarmer");
		Bidder fm = searchService.bidderApprove(app,action);
		ModelAndView mav = new ModelAndView("searchedBidder");
		mav.addObject("bidder1",fm);
		return mav;
	} 
	
	
	
	
	/*@RequestMapping(value="/searchbidder", method=RequestMethod.POST)
	public ModelAndView searchbidder(HttpServletRequest request, HttpServletResponse response)
	{
		String f_email=request.getParameter("_email");
		Bidder barmer=new Bidder();
		bidder.setF_email(f_email);
		Bidder bidder1=searchService.searchFarmer(bidder);
		ModelAndView mav=new ModelAndView("searchbidder");
		mav.addObject("bidder1",bidder1);
		return mav;
	} */
	

}
