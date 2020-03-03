package com.multiplex.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.multiplex.beans.Admin;
import com.multiplex.beans.Movie;
import com.multiplex.beans.Screen;
import com.multiplex.beans.UpdateMovie;
import com.multiplex.dao.MovieDAO;
import com.multiplex.dao.UserDAO;

@Controller

public class AdminController {

	@Autowired
	MovieDAO dao;

	@RequestMapping("/admin")
	public ModelAndView showAdmin()
	{
		return new ModelAndView("Admin","command",new Admin());
	}

	@RequestMapping(value="/adm", method=RequestMethod.POST)
	public ModelAndView getAdminInfo(@RequestParam("username")String uname,@RequestParam("password")String password)
	{
		Admin u2=new Admin();
		u2.setUsername(uname);
		u2.setPassword(password);
		try
		{
			dao.getAdmin(uname,password);
			return new ModelAndView("success");
		}
		catch(Exception e)
		{
			return new ModelAndView("invalid","command","Please Enter Valid Credentials");
		}
	}
	@RequestMapping("/display")
	public ModelAndView viewMovie(HttpSession session)
	{  
		List<Movie> list=dao.getMovies();
		Movie mlist=new Movie();


		session.setAttribute("movelist", list);

		return new ModelAndView("display","mov",list);  
	}


	@RequestMapping("/add")
	public ModelAndView addingMovieInfo()
	{

		return new ModelAndView("Update","command",new UpdateMovie());
	}
	/*@RequestMapping(value="/adding",method=RequestMethod.POST)
	public ModelAndView addMovieInfo(@ModelAttribute("Movie")Movie movie,BindingResult result)
	{
		System.out.println("Adding..........");
		int flag=dao.addMovie(movie);
		if(flag==1)
		{

			return new ModelAndView("display");
		}
		else
		{
			return new ModelAndView("invalid");
		}
	}*/
	@RequestMapping("/update1")
	public ModelAndView addMoviedetails()
	{
		return new ModelAndView("update1","command",new UpdateMovie());
	}

	@RequestMapping("/update")
	public ModelAndView updateMovieInfo(@RequestParam("movieId")String mid,@RequestParam("movieName")String mname,
			@RequestParam("fromDate")String fDate,@RequestParam("screenNo")String sno)
	{

		UpdateMovie m=new UpdateMovie();
		m.setMovieId(mid);
		m.setMovieName(mname);
		m.setFromDate(fDate);
		m.setScreenNo(sno);
		int flag=dao.updateMovie(mid,mname,fDate,sno);
		if(flag==1)
		{

			return new ModelAndView("valid");
		}
		else
		{
			return new ModelAndView("invalid");
		}
        

	}
	}
