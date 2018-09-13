<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>check seat</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <br>
   <%
   request.setCharacterEncoding("utf-8");
   String[] number = (String[])session.getAttribute("number");
 
   %>
  <% 
    //boolean flag=false;     
 //ResultSet rs=null;
 

    
    
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    Connection con= java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","123456");                      
    Statement stmt=con.createStatement();
    int col=stmt.executeUpdate("update seat set type='2' where number="+number[0]);
    
    stmt.close();
    con.close();
   // rs.close();
   
    %>
    <script type="text/javascript"> alert("购票成功！"); window.location="success.jsp" </script>
   <% 
   %>
  </body>
</html>
