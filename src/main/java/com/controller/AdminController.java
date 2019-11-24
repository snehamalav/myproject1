package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.Admin;
import com.model.Bidder;
import com.model.Farmer;
import com.service.AdminService;
@Controller("mycontroller3")
public class AdminController {
	
	@Autowired
	public AdminService adminService;
	@RequestMapping(value = "/Adminhome", method = RequestMethod.GET)
	  public ModelAndView showRegister2(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("Admin");
	    return mav;
	  }
	
	@RequestMapping(value="/viewfarmers", method=RequestMethod.GET)
	public ModelAndView viewfarmers()
	{
		List<Farmer> list=adminService.getFarmers();
		ModelAndView mav=new ModelAndView("viewfarmers");
		mav.addObject("list",list);
		return mav;
	}   
	
	
/*	@RequestMapping(value = "/Adminhome", method = RequestMethod.GET)
	  public ModelAndView showR(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("Admin");
	    return mav;
	  }
	*/
	@RequestMapping(value="/viewbidder", method=RequestMethod.GET)
	public ModelAndView viewbidder()
	{
		List<Bidder> alist=adminService.getBidder();
		ModelAndView mav=new ModelAndView("viewbidder");
		mav.addObject("alist",alist);
		return mav;
	}
	
	
	
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("login");
	    mav.addObject("farmer", new Farmer());
	    return mav;
	  }

	  @RequestMapping(value = "/loginadmin", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,   @ModelAttribute Admin admin) {
		 
	    ModelAndView mav = null;
	    boolean flag=adminService.validateAdmin(admin);
	    System.out.println(flag);
	    if (flag) {
	      mav = new ModelAndView("Admin");
	      mav.addObject("userid", admin.getUserid());
	      //session manage
	      
	      HttpSession session= request.getSession();
	      session.setAttribute("userid",admin.getUserid());
	    } 
	    
	    else {
	      mav = new ModelAndView("login");
	      mav.addObject("message", "farmeremail or Password is wrong!!");
	    }
	    return mav;
	  }
	@RequestMapping(value = "/logout1", method = RequestMethod.GET)
		public ModelAndView farmerlogout1(HttpServletRequest request, HttpServletResponse response) {
			 HttpSession session =request.getSession(false);
			 session.invalidate();
			 ModelAndView mav = new ModelAndView("login");
			 mav.addObject("login", new Farmer());
			 return mav;
		 }
	
}
