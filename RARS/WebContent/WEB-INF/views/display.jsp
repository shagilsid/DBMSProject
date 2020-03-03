<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post">
		<center>
			<table border="2" width="70%" cellpadding="2">
				<tr>
					<th>MovieId</th>
					<th>MovieName</th>
					<th>ScreenNo</th>
					<th>Date</th>
					<th>MorningShow</th>
					<th>NoonShow</th>
					<th>FirstShow</th>
					<th>SecondShow</th>
					<th>NormalPrice</th>
					<th>ExecutivePrice</th>
					<th>PremiumPrice</th>
				</tr>
				

       <%--     <c:forEach items="${sessionScope.movielist}" var="mlist"> --%>
            <c:forEach items="${mov}" var="mlist">
					<tr>
						<td><c:out value="${mlist.getMovieId()}"/></td>
						<td><c:out value="${mlist.getMovieName()}"/></td>
						<td><c:out value="${mlist.getScreenDetails().getScreenNo()}"/></td>
						<td><c:out value="${mlist.getFromDate()}"/></td>
						<td><c:out value="${mlist.getShowTimings().getMorningShow()}"/></td>
						<td><c:out value="${mlist.getShowTimings().getMatineeShow()}"/></td>
						<td><c:out value="${mlist.getShowTimings().getFirstShow()}"/></td>
						<td><c:out value="${mlist.getShowTimings().getSecondShow()}"/></td>
						<td><c:out value="${mlist.getClassPrice().getNormalPrice()}"/></td>
						<td><c:out value="${mlist.getClassPrice().getExecutivePrice()}"/></td>
						<td><c:out value="${mlist.getClassPrice().getPremiumPrice()}"/></td>

					</tr>
				</c:forEach>
			</table>
		</center>

	</form:form>
	<a href="add.htm">click here to add movie details</a>
	<a href="update1.htm">click here to update movie details</a>
	
</body>
</html>