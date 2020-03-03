package com.multiplex.dao;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import com.multiplex.beans.CustomerRegistration;

public class UserRowMapper implements RowMapper<CustomerRegistration> {

	@Override
	public CustomerRegistration mapRow(ResultSet rs, int num) throws SQLException
	{
		CustomerRegistration user=new CustomerRegistration();
		
		user.setUserName(rs.getString(1));
		user.setPassword(rs.getString(2));
		return user;
	
	}
}

