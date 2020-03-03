<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Insert title here</title>

</head>
<body>
	<form:form method="post" action="update.htm">
		<form:label path="movieId"> Movie Id:</form:label>
		<form:input path="movieId" />
		<br>
		<form:label path="movieName"> Movie Name:</form:label>
		<form:input path="movieName" />
		<br>
		<form:label path="fromDate"> Date:</form:label>
		<form:input path="fromDate" />
		<br>
		<form:label path="screenNo"> Screen No:</form:label>
		<form:input path="screenNo" />
		<br>
        <input value="Add Movie details" type="submit" />
	</form:form>
</body>
</html>