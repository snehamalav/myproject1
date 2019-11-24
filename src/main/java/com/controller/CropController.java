package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Farmer;
import com.model.SellRequest;
import com.service.CropService;

@Controller("cropcontroller")
public class CropController {
	@Autowired
	public CropService cropService;
	@RequestMapping(value="/viewcrop", method=RequestMethod.GET)
	public ModelAndView viewfarmers(HttpSession session)
	{
		Farmer  f =(Farmer) session.getAttribute("f_email");
		List<SellRequest> clist=cropService.getCrop();
		ModelAndView mav=new ModelAndView("viewcrop");
		mav.addObject("clist",clist);
		return mav;
	}   

}
