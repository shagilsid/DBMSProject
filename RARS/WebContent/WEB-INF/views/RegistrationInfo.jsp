<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User Screen</title>
</head>
<body>
	<center>
		<h2 align="center">Enter Your Details here</h2>
		<f:form method="post" action="regUser.htm">
			<table border="3">
				<tr>
					<td><f:label path="Username">Username</f:label></td>
					<td><f:input path="Username" required="required" /></td>
				</tr>

				<tr>
					<td><f:label path="Password">Password</f:label></td>
					<td><f:password path="Password" required="required" /><br>
					</td>
				</tr>
				
				<tr>
					<td><f:label path="Email">Email</f:label></td>
					<td><f:input path="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required" /></td>
				</tr>
				
				<tr>
					<td>Gender</td>
					<td><f:select path="gender" required="required">
							<f:option value="" label="select" />
							<f:option value="Male" />
							<f:option value="Female" />
						</f:select></td>
				</tr>

				<tr>
					<td>Date Of Birth</td>
					<td><input type=date name="date" required="required" /></td>
				</tr>

				<tr>
					<td><f:label path="mobile">Mobile</f:label></td>
					<td><f:input path="mobile" required="required"
							pattern="[0-9]{10}" /></td>
				</tr>
				
				<tr>
					<td><f:label path="Image">Image</f:label></td>
					<td><f:input path="Image" required="required" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit"></td>
					<td><input type="reset" value="Clear"></td>
				</tr>
			</table>
		</f:form>
	</center>


</body>
</html>