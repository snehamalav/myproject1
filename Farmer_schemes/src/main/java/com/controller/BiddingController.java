package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Bidding;
import com.service.BiddingService;

@Controller("biddingController3")
public class BiddingController {

	@Autowired
	public BiddingService biddingService;
	
	@RequestMapping(value="/biddingrequest", method=RequestMethod.GET)
	public ModelAndView viewbiddinglist()
	{
		List<Bidding> list=biddingService.getBiddingList();
		ModelAndView mav=new ModelAndView("viewbidding");
		mav.addObject("list",list);
		return mav;
	} 
}
