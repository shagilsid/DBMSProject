package com.multiplex.dao;


import java.util.List;

import javax.servlet.Registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.multiplex.beans.Admin;
import com.multiplex.beans.CustomerRegistration;
import com.multiplex.beans.Movie;


@Repository
public class UserDAO {

		private JdbcTemplate jdbcTemplate;
		
		@Autowired
		public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
		{
			this.jdbcTemplate=jdbcTemplate;
		}
		
		public int addUser(CustomerRegistration reg) {
			String query="INSERT INTO CUSTOMERREGISTRATION VALUES(?,?,?,?,?,?,?)";
			int status=jdbcTemplate.update(query,reg.getUserName(),reg.getPassword(),reg.getEmail(),reg.getDob(),reg.getGender(),reg.getMobileNo(),reg.getImage());
			return status;
		}
	
		public CustomerRegistration getUser(String username,String password)
		{
			CustomerRegistration reg=null;
			String query="SELECT USERNAME,PASSWORD FROM CUSTOMERREGISTRATION WHERE USERNAME=? AND PASSWORD=?";
			try
			{
			reg= jdbcTemplate.queryForObject(query, new UserRowMapper(),username,password);
			}catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
			return reg;
		}
		public Admin getAdmin(String username,String password)
		{
			Admin ad=null;
			String query="SELECT * FROM ADMIN WHERE USERNAME=? AND PASSWORD=?";
			try
			{
			ad= jdbcTemplate.queryForObject(query, new AdminRowMapper(),username,password);
			
			}catch(Exception e)
			{
				
			}
			
			return ad;
			
			
		}
		
		public List<Movie> getMovies()
		{
			String q="SELECT * FROM MOVIE";
			List<Movie> movieList=jdbcTemplate.query(q, new MovieResultSetExtractor());
		    return movieList;
		}
		
		/*public Movie getMoviePrice(String movieName)
		{
			
			String q="SELECT PRICE FROM MOVIE WHERE MOVIENAME=?";
		
			Movie price=jdbcTemplate.queryForObject(q, new PriceRowMapper(),movieName);
		
			return price;
		   
		}
		/*public int bookTicket(Booking book) 
		{
			String query="INSERT INTO BOOKING VALUES(?,?,?,?,?,?)";
			int status=jdbcTemplate.update(query,book.getBookId(),book.getEmail(),book.getNos(),book.getShowDate(),book.getShowTiming(),book.getMovieName());
			return status;
		}*/

	}
