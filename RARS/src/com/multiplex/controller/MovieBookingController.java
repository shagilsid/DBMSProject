package com.multiplex.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.multiplex.beans.Movie;
import com.multiplex.dao.UserDAO;

@Controller
public class MovieBookingController {

	@Autowired
	UserDAO userDao = new UserDAO();

	@RequestMapping(value = "/movieBooking", method = RequestMethod.POST)
	public ModelAndView search(HttpServletRequest request, @RequestParam("moviename") String mname,
			@RequestParam("noofseats") int seats, @RequestParam("bookingdate") String givenday,
			@RequestParam("slotbooking") int slot) {
		/*
		 * Date todayDate = null; SimpleDateFormat sdf=new
		 * SimpleDateFormat("YYYY-MM-dd"); System.out.println(givenday); try {
		 * todayDate =sdf.parse(givenday); } catch (ParseException e) {
		 * System.out.println("wrong date format"); }
		 */

		System.out.println(slot + 1);
		// System.out.println(todayDate);
		Calendar calen = Calendar.getInstance();
		calen.set(Calendar.DATE, calen.getActualMaximum(Calendar.DATE));
		int monthDay = calen.get(Calendar.DAY_OF_MONTH);
		int lastDayOfMonth = calen.get(Calendar.DAY_OF_MONTH);

		if (slot > calen.get(Calendar.HOUR_OF_DAY)) {

			slot = slot - 12;
		/*//	String[] screen = buyerDao.screen(mname);

			String screennumber = screen[0];
			double price = Double.parseDouble(screen[1]);
			System.out.println(screen[0]);
			System.out.println(price);*/
			// int i= buyerDao.updateSeats(screen[0],seats);
			// System.out.println(i);

			 List<Movie> list=userDao.getMovies(); 
			
			/* Movie movie = new Movie();
			
			TicketBooking tb = new TicketBooking();
			tb.setMovie(movie);
			tb.setBookingDate(givenday);
			tb.setNoofseats(seats);
			tb.setShowtime(slot + "PM");
			tb.setTotalprice(price * seats);*/
			return new ModelAndView("", "info", list);
		} else {

			return new ModelAndView("displaydetails", "invalidslot",
					"Please choose Slot After" + calen.get(Calendar.HOUR) + "PM");

		}

	}

}
