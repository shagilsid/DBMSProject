package com.multiplex.beans;



public class Booking 
{
	private static int bookingId=0; 
	private String bookingDate;
	
	private String userName;
	private String email;
	private int mobileNo;
	private String movieName;
	private int screenNo;
	
	private ClassType className;
	
	private String seatNo;
	private ShowTimings showTime;

	private int tickets;
	private double discount;
	private double totalFare;
	public static int getBookingId() {
		return bookingId;
	}
	public static void setBookingId(int bookingId) {
		Booking.bookingId = bookingId;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(int mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getScreenNo() {
		return screenNo;
	}
	public void setScreenNo(int screenNo) {
		this.screenNo = screenNo;
	}
	public ClassType getClassName() {
		return className;
	}
	public void setClassName(ClassType className) {
		this.className = className;
	}
	public String getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}
	public ShowTimings getShowTime() {
		return showTime;
	}
	public void setShowTime(ShowTimings showTime) {
		this.showTime = showTime;
	}
	public int getTickets() {
		return tickets;
	}
	public void setTickets(int tickets) {
		this.tickets = tickets;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public double getTotalFare() {
		return totalFare;
	}
	public void setTotalFare(double totalFare) {
		this.totalFare = totalFare;
	}
	
	@Override
	public String toString() {
		return "Booking [bookingDate=" + bookingDate + ", userName=" + userName + ", email=" + email + ", mobileNo="
				+ mobileNo + ", movieName=" + movieName + ", screenNo=" + screenNo + ", className=" + className
				+ ", seatNo=" + seatNo + ", showTime=" + showTime + ", tickets=" + tickets + ", discount=" + discount
				+ ", totalFare=" + totalFare + "]";
	}
	
	
	
	
	
}
