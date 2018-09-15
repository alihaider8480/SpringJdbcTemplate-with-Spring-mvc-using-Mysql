<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 			<div align="center">
		<h1>New/Edit Contact</h1>
		<h3>${error1}</h3>
		<form action="/springjdbcexample/insert" method="post">
		<table>
		   <tr>
					<td>Name:</td>
					      <td><input type="text" name="emploeeName"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Salary</td>
					<td><input type="text" name="salary" ></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><input type="text" name="gender" ></td>
				</tr>
	         	<tr>
					<td colspan="2" align="center"><br>
					<input type="submit" value="Save"></td>
				</tr>   
		</table>
		</form>
					<br><br>
					<h3><a href="/springjdbcexample/">Go HomePage</a></h3>
	</div>
	
</body>
</html>