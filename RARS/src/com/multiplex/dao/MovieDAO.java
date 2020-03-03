package com.multiplex.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.multiplex.beans.Admin;
import com.multiplex.beans.Movie;




public class MovieDAO {
	
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
	{
		this.jdbcTemplate = jdbcTemplate;
	}

	public Admin getAdmin(String username, String password) 
	{
		String query="SELECT * FROM ADMIN WHERE USERNAME=? and PASSWORD=?";
		return jdbcTemplate.queryForObject(query,new AdminRowMapper(),username,password);
		 
      }

	public List<Movie> getMovies()
	{  

		String query="SELECT * FROM MOVIEINFO";
		List<Movie> list=jdbcTemplate.query(query,new MovieResultSetExtractor());
		return list;
	}

	/*public int addMovie(Movie movie) {
		String q="insert into movieinfo values(?,?,?,?,?,?,?,?,?,?,?)";
		int flag=jdbcTemplate.update(q,movie.getMovieId(),movie.getMovieName(),movie.getScreenDetails().getScreenNo(),movie.getFromDate(),movie.getShowTimings().getMorningShow()
				,movie.getShowTimings().getMatineeShow(),movie.getShowTimings().getFirstShow(),movie.getShowTimings().getSecondShow(),
				movie.getClassPrice().getNormalPrice(),movie.getClassPrice().getExecutivePrice(),movie.getClassPrice().getPremiumPrice());
		return flag;

	}*/

	public int updateMovie(String mid,String mname, String fDate, String sno) {
		String q="update movieinfo set movieid=?,moviename=?,fromdate=? where screenno=?";
		int flag=jdbcTemplate.update(q,mid,mname,fDate,sno);

		return flag;


	}
	public int update(String mid,String mname, String fDate, String sno) {
		String q="alter movieinfo set movieid=?,moviename=?,fromdate=? where screenno=?";
		int flag=jdbcTemplate.update(q,mid,mname,fDate,sno);

		return flag;


	}

	
	


	
	
	/*
	public int addMovie(Movie movie) {
	String q="insert into movieinfo values(?,?,?,?,?,?,?,?,?,?,?)";
		int flag=jdbcTemplate.update(q,movie.getMovieId(),movie.getMovieName(),movie.getScreenNo(),movie.getDate(),movie.getMorningShow()
				,movie.getNoonShow(),movie.getFirstShow(),movie.getSecondShow(),movie.getNormalPrice(),movie.getExecutivePrice(),movie.getPremiumPrice());
		return flag;

		}
*/
	
	
	
	
	
}

	


