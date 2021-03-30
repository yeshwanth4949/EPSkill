<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String empemail = (String)session.getAttribute("empemail");
String rating = request.getParameter("1");

try
{
	Connection con = null;
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  
	  //tnsnames.oracle
	  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
	  int rating1=0;
	  PreparedStatement pstmt = con.prepareStatement("select rating from employee where email=?");
	  pstmt.setString(1,empemail);
	  ResultSet rs = pstmt.executeQuery();
	  if(rs.next()==true)
	  {
		 rating1 = rs.getInt(1); 
	  }
	  if(rating1 == 0)
	  {
		  rating1=Integer.parseInt(rating);
	  }
	  else
	  {
		  rating1=(rating1+Integer.parseInt(rating))/2;
	  }
	  
	  
	PreparedStatement pstmt1 = con.prepareStatement("update employee set rating=? where email=?");
	pstmt1.setInt(1, rating1);
	pstmt1.setString(2, empemail);

  
int n=pstmt1.executeUpdate();

if(n>0)
{
    out.println("<h1>Your Rating is Submitted</h1>");
	out.println("<a href='../work/index.html'>Home</a>");
}

	else
	{
		out.println("<h1>Your Rating is not submitted</h1>");
	}

}
catch(Exception e)
{
   out.println(e);
}
%>
</body>
</html>