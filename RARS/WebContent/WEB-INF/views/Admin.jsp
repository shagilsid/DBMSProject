<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form:form method="post" action="adm.htm">

		<table border="2" align="center">
			
			<tr>
				<td><form:label path="username"> User Name:</form:label></td>
				<td><form:input path="username" /></td>
				<br>
			</tr>
			<tr>
				<td><form:label path="password"> Password:</form:label></td>
				<td><input type="password" name="password" /></td>
				<br>
			</tr>
			<tr><td>
				<input value="Login" type="submit" /></td>
			</tr>
			</table>
			</form:form>
			
</body>
</html>