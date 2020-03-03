package com.multiplex.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.multiplex.beans.Movie;




public class PriceRowMapper implements RowMapper<Movie> {

	@Override
	public Movie mapRow(ResultSet rs, int num) throws SQLException
	{
		Movie mv=new Movie();
		
		//mv.setPrice(rs.getDouble(1));
	
		return mv;
	
	}
}
