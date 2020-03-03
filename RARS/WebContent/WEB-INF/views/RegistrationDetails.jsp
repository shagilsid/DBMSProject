<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Details</title>
</head>
	<body background="images/bgimage.jpg">
	
	    <h1>User Registered Successfully Details are</h1>
		<h2 align="center">
			${info.getName()}<br>
			${info.getEmail()}<br>
			${info.getDob()}<br>
			${info.getGender()}<br>
			${info.getMobile()}<br>
			${info.getImage()}<br>	
			
			${info.get}<br>
		</h2>
		<a href="Loginhome.htm"><h3 align="center">Click Here to Login</h3></a>
	</body>
</html>