<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>

<s:form method="post" action="login.htm">
<center>

	<h2>Login Here</h2>
	<br><br>
		<table border="2" >
			<tr><td>Login Type</td>
				<td><select id="type" name="logintype">
					   <option value="select" selected>Select</option>
					   <option value="admin">Administrator</option>
					   <option value="customer">Customer</option>
					 </select>
				</td>
			</tr>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username"/></td>
			</tr>
			
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"/></td>
			</tr>
			
			<tr>
				<td>Remember Me ?</td>
				<td><input type="checkbox" name="remember" value="1"/></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Login"/>
				<input type="reset" value="Clear"/></td>
			</tr>
			
			<tr><td colspan="2"><a href="register.htm">Not Yet Registered ?......Register Here !!</a></td>
			</tr>
			</table>
	</center>
</s:form>

</body>
</html>