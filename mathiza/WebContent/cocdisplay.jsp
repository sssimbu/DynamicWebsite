
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
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body style="background-color: #B7C5A7;">
<style>

p.dot {
    border-style: dotted;
    border-width: 1px;
    border-height:1px;
    width:200px;
}
</style>
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

ResultSet rs = stmt.executeQuery("select * from coctable");%>





 <center>
<div class="img">

   
   <% while (rs.next()) {%>
   <table>
   <div class="row">
   <fieldset><legend style="text_aling:center;">
    <div class="col-sm-4" >
    <p class="dot">
    <%=rs.getString("name") %><br>
 <img src="<%=rs.getString("image")%>" width="150" height="150"/>
 <br>
   
   <%=rs.getString("price") %><br>
 </p>
 <%}%>

</div></legend>
</fieldset></div> </table></div>
</center>

</form>
</body>
</html>