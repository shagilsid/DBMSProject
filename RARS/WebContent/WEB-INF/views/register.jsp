<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<h2>${details }</h2>
</head>
<body>
<form:form action="insertBuyer.do" method="post"  enctype="multipart/form-data">
<table>
<tr>
<td>User Name:</td>
 <td> <input type="text" name="username" required></td><br>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password" required/></td></br>
  </tr>
<tr>
<td>MobileNo:</td>
<td><input type="text" name="mobileNo" required/></td></br>
  </tr>
<tr>
<td>Email:</td>
<td><input type="email" name="email" required/></td></br>
  </tr>
<tr>
<td>DOB:</td>
<td><input type="text" name="dob" required/></td></br>
  </tr>
<tr>
<td>Location:</td>
<td><input type="text" name="location" required/></td></br>
  </tr>
<tr>
<td>Gender:</td>
<td><input type="text" name="gender" required/></td></br>
  </tr>

<tr>
<td>Upload Avathor(Image):</td>
<td><input type="file" name="file" value="upload Avathor" />

</tr>

</table>
<input type="submit" name="Submit" value="Register"/>
</form:form>
</body>
</html>