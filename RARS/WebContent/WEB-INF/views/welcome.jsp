<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<h1><background color="white"><ul><center>Welcome TO SpringMultiplex</center></h1>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
h2 {
    text-align: right;
}
h1 {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
	 margin-left: 40px;
         margin-right: 40px;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: #800000;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

body {
    background-color:#00001a ;
}
</style>

<style>
h1 {
    background-color: #00001a;
}

div {
    background-color: #00001a
;
}

p {
    background-color: #264d00
;
}

</style>
</head>
<body background=images/santhosh.jpg>



	<div class="one">
 <ul>
   <li><a class="active" href="#">Home</a></li>
   <li><a href="#">Quick Book</a></li>
   <li><a href="#">Register</a></li>
   <li><a href="#">Login</a></li>
     

   <li class="dropdown">
    <a href="#" class="dropbtn">Feedback</a>
    <div class="dropdown-content">
      <a href="#"> Complaint</a>
      <a href="#"> Suggetion</a>
      <a href="#"> Contact us</a>
      <li><a href="#">E-Magzine</a></li>   
      
   
  </li>
</ul>
<div>
<frameset cols="25%,*,25%">
  <frame src="frame_a.htm">
  <frame src="frame_b.htm">
  <frame src="frame_c.htm">
</frameset>
<table>

<marquee><image src="images/bahubali.jpg" width=700 height=400>
<!-- <image src="images/bahubali.jpg" width=700 height=400> -->
<image src="images/worrier.jpg" width=700 height=400>
<image src="images/worrier2.jpg" width=700 height=400>
<image src="images/worrier3.jpg" width=700 height=400>
<image src="images/sachin.jpg" width=700 height=400>
<image src="images/wondermen.jpg" width=700 height=400>
<image src="images/worrier.jpg" width=700 height=400>
<image src="images/worrier3.jpg" width=700 height=400>
<image src="images/worrier2.jpg" width=700 height=400>
</marquee>
</div>
</table>

	
	</div>
	 </div>
	  <ul class="cinemas__location">
			<li>
          
              <div class="gradient hide-for-small"></div>
              <img width="330px" height="165px" src="http://img1.thecinema.in/resources/images/home/A_320x165_spice_it_up.jpg" />
              <h6>PROMOTION</h6>
          
          <p>Eat to your heart's content with this incredible offer at Spice Kitchen! For details, call: 044-42244224.</p>
			</li>
			<li>
				
					<div class="gradient hide-for-small"></div>
					<img width="330px" height="165px" src="http://img1.thecinema.in/resources/images/home/B_320x165.jpg" alt="SPICE KITCHEN" title="SPICE KITCHEN" />
					<h6>SPICE KITCHEN</h6>
				
				<p>Spice Kitchen is a modern yet contemporary quick service restaurant conceptualised for traditional food lovers.</p>
			</li>
			<li>
				<a href="http://fuel.s2.thecinema.in:8080/FUELConnectNellore/" target="_blank">
					<div class="gradient hide-for-small"></div>
					<img width="330px" height="65px" src="http://img1.thecinema.in/resources/images/home/C_320x165.jpg" alt="Fuel the prepaid movie Card" title="Fuel" />
					<h6>Fuel</h6>
				</a>
				<p>Fuel is the first-ever prepaid movie card and is exclusive to our cinemas. This card enables our customers to pre-load with credit and pay for movie tickets, as well as food and beverages, in all of our cinemas, website.</p>
			</li>
		</ul>
	</section>
	<div>/
	
	
	
<%-- 	<a href="index.jsp">Home</a> |
	
	<c:choose>
		<c:when test="${validUser == 'true' }">
			<a href="TrainSearch.jsp">Search Train</a> | 
			 <a href="logout">Logout</a>
			</c:when>
			<c:otherwise>
			
			<a href="login.jsp">Login</a> |
			<a href="register.jsp">Register</a></div>
			</c:otherwise>
	</c:choose> --%>
	
	
	<br/>
	
</body>
</html>





