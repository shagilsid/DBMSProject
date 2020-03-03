package com.multiplex.beans;


public class Movie 
{
	private String movieId;
	private String movieName;
	private Screen screenDetails;
	private String fromDate;

	private ShowTimings showTimings;
	private ClassPrice classPrice;
	
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public Screen getScreenDetails() {
		return screenDetails;
	}
	public void setScreenDetails(Screen screenDetails) {
		this.screenDetails = screenDetails;
	}
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public ShowTimings getShowTimings() {
		return showTimings;
	}
	public void setShowTimings(ShowTimings showTimings) {
		this.showTimings = showTimings;
	}
	public ClassPrice getClassPrice() {
		return classPrice;
	}
	public void setClassPrice(ClassPrice classPrice) {
		this.classPrice = classPrice;
	}

	
	

}
