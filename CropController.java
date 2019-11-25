package com.controller;

import java.util.List;

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
	
	
	@RequestMapping(value = "/searchcrop", method = RequestMethod.GET)
	  public ModelAndView showCrop(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("searchcrop");
	    return mav;
	  }
	
	@RequestMapping(value = "/searchedcrop", method = RequestMethod.GET)
	  public ModelAndView showCrops(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("searchedcrop");
	    return mav;
	  }
	@RequestMapping(value="/searchedcrop", method=RequestMethod.POST)
	public ModelAndView searchcrops(HttpServletRequest request, HttpServletResponse response)
	{
		int email=Integer.parseInt(request.getParameter("c_id"));
		SellRequest sellrequest=new SellRequest();
		sellrequest.setC_id(email);
		SellRequest crop1=cropService.searchCrop(sellrequest);
		ModelAndView mav=new ModelAndView("searchedcrop");
		mav.addObject("crop1",crop1);
		return mav;
	}   
	
	
	@RequestMapping(value="/approvecrop", method=RequestMethod.GET)
	public String cropApprove1(HttpServletRequest request, HttpServletResponse response)
	{
		return "searchedcrop";
	}
	
	@RequestMapping(value="/approvecrop", method=RequestMethod.POST)
	public ModelAndView cropApprove(HttpServletRequest request, HttpServletResponse response)
	{
		int app =Integer.parseInt(request.getParameter("email"));
		String action= request.getParameter("action");
		//ModelAndView mav=new ModelAndView("searchedFarmer");
		SellRequest fm = cropService.cropApprove(app,action);
		ModelAndView mav = new ModelAndView("searchedcrop");
		mav.addObject("crop1",fm);
		return mav;
	} 

	
	
	
	
	
	
	
	
	
	
	
	/*@RequestMapping(value="/approvecrop", method=RequestMethod.POST)
	public ModelAndView cropApprove(HttpServletRequest request, HttpServletResponse response)
	{
		int app=0;
		try{
		app = Integer.parseInt(request.getParameter("email"));
		System.out.println("11"+request.getParameter("email"));
		}
		catch(NumberFormatException e)
		{
			System.out.println(e);
		}
		
		//int app = (int)request.getParameterValues(app);
		String action= request.getParameter("action");
		//ModelAndView mav=new ModelAndView("searchedFarmer");
		List<SellRequest> clist  = (List<SellRequest>) cropService.cropApprove(app,action);
		ModelAndView mav = new ModelAndView("viewcrop");
		mav.addObject("clist",clist);
		return mav;
	} 
*/

	/*@RequestMapping(value="/approve1", method=RequestMethod.GET)
	public String cropsApprove(HttpServletRequest request, HttpServletResponse response)
	{
		return "viewcrop";
	}
	
	@RequestMapping(value="/approve2", method=RequestMethod.POST)
	public ModelAndView cropApprove(HttpServletRequest request, HttpServletResponse response)
	{
		String app =request.getParameter("c_id");
		String action= request.getParameter("action");
		//ModelAndView mav=new ModelAndView("searchedFarmer");
		Farmer fm = searchService.farmerApprove(app,action);
		ModelAndView mav = new ModelAndView("viewcrop");
		mav.addObject("clist",fm);
		return mav;
	} */
}
