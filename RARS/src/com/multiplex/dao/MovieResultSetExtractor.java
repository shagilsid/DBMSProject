package com.multiplex.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowCallbackHandler;

import com.multiplex.beans.ClassPrice;
import com.multiplex.beans.Movie;
import com.multiplex.beans.Screen;
import com.multiplex.beans.ShowTimings;

public class MovieResultSetExtractor implements ResultSetExtractor<List<Movie>> {

	
	@Override
	public List<Movie> extractData(ResultSet rs) throws SQLException, DataAccessException {
		
		List<Movie> movieList=new ArrayList<Movie>();
		Screen s=new Screen();
		
		ShowTimings st=new ShowTimings();
		
		ClassPrice cp=new ClassPrice();
		while(rs.next()){
			
			Movie m=new Movie();
			m.setMovieId(rs.getString(1));
			m.setMovieName(rs.getString(2));
			s.setScreenNo(rs.getString(3));
			m.setScreenDetails(s);
			m.setFromDate(rs.getString(4));
		    st.setMorningShow(rs.getString(5));
		    st.setMatineeShow(rs.getString(6));
		    st.setFirstShow(rs.getString(7));
		    st.setSecondShow(rs.getString(8));
		    m.setShowTimings(st);
		    cp.setNormalPrice(rs.getDouble(9));
		    cp.setExecutivePrice(rs.getDouble(10));
		    cp.setPremiumPrice(rs.getDouble(11));
		    m.setClassPrice(cp);
            
		    movieList.add(m);
		    
		}
		return movieList;
	}

}
