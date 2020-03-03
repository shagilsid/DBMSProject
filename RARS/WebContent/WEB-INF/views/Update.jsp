
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>Adding Movie Details</center>
	<table border="2" align="center">
		<form:form method="post" action="adding.htm">
			<tr>
				<td><form:label path="movieId">Movie Id:</form:label></td>
				<td><form:input path="movieId" /></td> <br>
			</tr>
			
			<tr>
				<td><form:label path="movieName"> Movie Name:</form:label></td>
				<td><form:input path="movieName" /></td> <br>
			</tr>
			
			
			<tr>
				<td><form:label path="fromdate"> Date:</form:label></td>
				<td><form:input path="fromdate" /></td> <br>
			</tr>
			
			
						<td><input value="Add Movie Info" type="submit" /></td>
			</tr>
		</form:form>
	</table>
	</body>
</html>