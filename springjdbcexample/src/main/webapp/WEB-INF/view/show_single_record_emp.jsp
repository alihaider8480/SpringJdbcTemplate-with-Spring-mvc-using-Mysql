<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<br><br><br>
<h3>${update_message}</h3>
<form action="/springjdbcexample/update" method="post">
		<table>
	          <cc:forEach var="emp_list2" items="${show_single_record}">
			<tr>
				<td>ID:</td>
				<td><input type="text" name="employeeId" value="${emp_list2.employeeId}"></td>
			</tr>
			<tr>
				<td>Name:</td>
				      <td><input type="text" name="emploeeName" value="${emp_list2.emploeeName}"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" value="${emp_list2.email}"></td>
			</tr>
			<tr>
				<td>Salary</td>
				<td><input type="text" name="salary" value="${emp_list2.salary}"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" value="${emp_list2.gender}"></td>
			</tr>
         	<tr>
				<td colspan="2" align="center"><br>
				<input type="submit" value="Save"></td>
			</tr>   
  		    </cc:forEach>
  		 </table> 
  </form>
  <br><br>
					<h3><a href="/springjdbcexample/">Go HomePage</a></h3>
  </div>
</body>
</html>