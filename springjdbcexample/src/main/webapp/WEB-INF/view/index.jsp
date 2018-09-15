<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Manager Home</title>
    </head>
    <body>
        <div align="center">
            <h1>Contact List</h1>
            <h3><a href="/springjdbcexample/insertpage">Insert New Employee</a></h3>
            <table border="1">
                <th>ID</th>
                <th>Name</th> 
                <th>Email</th>
                <th>Salary</th>
                <th>Gender</th>
                <th>Update / Delete</th>
                  
                <c:forEach var="emplo" items="${final_list}">
                <tr>
                    <td>${emplo.employeeId}</td>
                    <td>${emplo.emploeeName}</td>
                    <td>${emplo.email}</td>
                    <td>${emplo.salary}</td>
                    <td>${emplo.gender}</td>
                    
                     <td>
                         <a href="/springjdbcexample/search single id/${emplo.employeeId}">Edit</a>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/springjdbcexample/delete/${emplo.employeeId}">Delete</a>
                    </td>
                             
                </tr>
                </c:forEach>             
            </table>
        </div>
    </body>
</html>