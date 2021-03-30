<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:black;
color:red;
}
h1{
text-align:center;
}
a{
text-decoration:none;
padding:10px;
color:red;
}

</style>
</head>
<body>
<h1>Share Your Knowledge</h1>

<a href="home.jsp">Home</a>
<a href="employeehome.jsp">view Requests</a>
<a href="wip.jsp">Current Work</a>
<a href="logout.jsp"><button onclick="myLogout()"  type="button" class="btn btn-info" >Log out</button></a>

</body>
</html>