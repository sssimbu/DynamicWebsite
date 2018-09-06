<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #B7C5A7;">
<a href="deleteothers1.jsp">Delete by Id</a>

<%  		
//String name = (String)session.getAttribute("name");
//session.setAttribute("name", name);

//String address = (String)session.getAttribute("address");
//session.setAttribute("address", address);

Class.forName("com.mysql.jdbc.Driver");

System.out.println(" loaded");

String url = "jdbc:mysql://localhost:3306/mathiza";
String user = "root";
String password = "root";
String driverClass = "com.mysql.jdbc.Driver";

	Class.forName(driverClass);
Connection conn = DriverManager.getConnection(url, user, password);
System.out.println("Connection created");
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("select * from otherstable");%>



<div class="img">
<table align="center" border="1">

  <tr>
    <td>Id</td>
    <td>Image</td>
    <td>Name</td>
    <td>Price</td>

  </tr>
   <% while (rs.next()) {%>
  <tr>
  <td><%=rs.getString("id") %></td>
   <td><img src="<%=rs.getString("image")%>" width="150" height="150"/></td>
   <td><%=rs.getString("name") %></td>
   <td><%=rs.getString("price") %></td>
  </tr>
 <%}%>
</table>
</div>
</form>
</body>
</html>