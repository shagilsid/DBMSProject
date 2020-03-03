<%@ page language="java" import="java.util.*" import="java.text.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movies List</title>


<script type="text/javascript">

function ValidatePassengers(){
	
	
}


function goBack() {
    window.history.back();
}

</script>

${invalidslot}
${info }

</head>


<body>
<table border="1px" bordercolor="black" align="center">
                <tr>
                    <td>MovieName</td>
                    <td>ScreenNo</td>
                    <td>Capacity</td>
                    <td>RemainingSeats</td>
                    <td>Price(INR)</td>
                </tr>
                <c:forEach items="${sessionScope.movielist}" var="movie">
                <c:set var="movieslist" value="${sessionScope.movieslist}"></c:set>

                    <tr>
                        <td><c:out value="${movie.getMoviename()}" /></td>
                        <td><c:out value="${movie.getScreenno()}" /></td>
                        <td><c:out value="${movie.getCapacity()}" /></td>
                        <td><c:out value="${movie.getRemainingseats()}" /></td>
                        <td><c:out value="${movie.getPrice()}" /></td>
                    </tr>
                </c:forEach>
            </table>
    
<%
Calendar cal = Calendar.getInstance();
cal.add(Calendar.DATE, 1);
Date date = cal.getTime();             
SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
String date1 = format1.format(date);  
// out.println(date1);
Date tomorrow = new Date(date.getTime() + (1000 * 60 * 60 * 24));
String date2 = format1.format(tomorrow);  


//int lastDayOfMonth = calen.get(Calendar.DAY_OF_MONTH);
%>            


            
<form name="myform" method="post" action="movieBooking.do" OnSubmit="return ValidatePassengers();" >
<%-- input type="hidden" name="lastday" id="currentday" value="<%=cal.get(Calendar.DAY_OF_MONTH)%>"/> --%>
<table border="2">
<tr>
<td>Choose Movie Name:</td>
<td><select name="movieName">
<c:forEach items="${sessionScope.movielist}" var="movie">
<option><c:out value="${movie.getMoviename()}" /></option>
</c:forEach>
</select>
</td>
</tr> 
<br>
<!-- 
<tr>
        <td>Choose no of Seats:</td>
        <td><input type="number" name="noofseats" min="1" max="10" required/></td>
   </tr> -->
<tr>
<td>Booking Date</td>
<td><input type="date" name="bookingdate" min="<%=date1%>" max="<%=date2%>" placeholder="YYYY-MM-DD" required/></td>
</tr><br>

<tr>
<td> Select Slot</td>
<td><select name="slotbooking">
  <option value="13">Matinee Show</option>
  <option value="16">Evening Show</option>
  <option value="19">First Show</option>
  <option value="22">Second Show</option>
</select>
  </td></tr>
</table>
<input  type="submit" value="Book Movie"/>
</form>
 
 <button onclick="goBack()">Go Back</button>       
</body>

</html>