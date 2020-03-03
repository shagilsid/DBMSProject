package com.multiplex.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.multiplex.dao.UserDAO;
import com.multiplex.beans.CustomerRegistration;


@Controller
public class LoginController {

	@Autowired
	UserDAO userDao;

	@RequestMapping("homepage")
	public ModelAndView showlogin()
	{
		return new ModelAndView("welcome");
	}
	@RequestMapping("login")
	public ModelAndView userlogin()
	{
		return new ModelAndView("login");
	}

	@RequestMapping("moviebooking")
	public ModelAndView movieticketbooking()
	{
		return new ModelAndView("seatbooking");
	}
	
	
	
	@RequestMapping(value="/seatselection", method=RequestMethod.POST)
	public ModelAndView getSeatBookingInfo()
	{
		// doubt:- how to know,
		// how many seats are selected and how many requestParams need to be taken.
		
		
		return new ModelAndView("");
}
	
	
	
	@RequestMapping(value="/logintype", method=RequestMethod.POST)
	public ModelAndView getUserInfo(HttpServletRequest request,
			HttpServletResponse response,HttpSession session,
			@RequestParam("logintype")String type,
			@RequestParam("name")String uname,
			@RequestParam("password")String password)
	{
           System.out.println(type);
		//String logintype=request.getParameter("logintype");
		if(type.equals("Customer"))
		{
			CustomerRegistration reg=userDao.getUser(uname,password);
			request.setAttribute("regis",reg);
			session.setAttribute(uname, password);
			if(reg!=null){
				return new ModelAndView("loginsuccess","info","login success.....");
			}
			else{
				return new ModelAndView("login","info","invalid user..please register");
			}

		}
		return new ModelAndView("loginsuccess","model","");
	}
}	


/*	if(request.getParameter("remember")!=null)
			{
				Cookie ckusername=new Cookie("username",reg.getUserName());
				ckusername.setMaxAge(3600);
				response.addCookie(ckusername);

				Cookie ckpassword=new Cookie("password",reg.getPassword());
				ckpassword.setMaxAge(3600);
				response.addCookie(ckpassword);
			}
 */


