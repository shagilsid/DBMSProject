<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>User Login</title>

<!-- <style>
video#bgvid{
min-width:100%;
min-height:100%;
width:auto;
height:auto;
background:url(C:\MultiplexMajorProject\MultiplexProject\WebContent\images\maxresdefault.jpg) no-repeat;
background-size:cover;

}

</style>
 -->
 </head>
<body background="C:\MultiplexMajorProject\MultiplexProject\WebContent\images\maxresdefault.jpg" width=700 height=500>
<!--  <video id="bgvid" autoplay poster="C:\MultiplexMajorProject\MultiplexProject\WebContent\images\maxresdefault.jpg">   
    <source src="C:\MultiplexMajorProject\MultiplexProject\WebContent\images\Magic_Flourish_Loop_Video_Background.mp4" type="video/mp4"> 
     </video> -->
<!--  
<video>
<source src=c:/MultiplexMajorProject\MultiplexProject\WebContent\images\Magic_Flourish_Loop_Video_Background.mp4" >
</video> -->
	<br>
	<h2 align="center">Welcome to  Multiplex</h2>
	<form method="post" action="logintype.htm">

		<table align="center">
			<tr>
				<td>Login Type</td>
				<td><select id="type" name="logintype">
						<option value="Customer">Customer</option>
						<option value="Administrator">Administrator</option>
						
				</select></td>
			</tr>
			<tr>
				<td>UserName</td>
				<td><input type="text" name="name" required="required"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" required="required"></td>
			</tr>
			<tr>
				<td>Remember Me ?</td>
				<td><input type="checkbox" name="remember" value="1" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Clear"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="register.htm">Not Yet Registered
						?......Register Here !!</a></td>
			</tr>
		</table>

	</form>
</body>
</html>