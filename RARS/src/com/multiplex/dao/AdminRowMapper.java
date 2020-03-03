package com.multiplex.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.multiplex.beans.Admin;

public class AdminRowMapper implements RowMapper<Admin>
{

	@Override
	public Admin mapRow(ResultSet rs, int num) throws SQLException 
	{
	
		Admin ad=new Admin();
		
		ad.setUsername(rs.getString(1));
		ad.setPassword(rs.getString(2));
		
		return ad;
	}

}
