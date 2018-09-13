<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>检验</title>
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
    PreparedStatement sqll=null;    
      ResultSet rs=null;
     boolean flag2=false; 
     String ty=""; 
     
     Class.forName("com.mysql.jdbc.Driver").newInstance();
     Connection conn=java.sql.DriverManager.getConnection
     ("jdbc:mysql://localhost:3306/movie","root","123456");
    
     //for(int i=0;i<number.length;i++){
     
     sqll=conn.prepareStatement("select * from seat where number =?");
     
    sqll.setString(1,number[0]);
    //out.println("<td>"+rs.getString("number")+"</td>");
   // }
    
    rs =sqll.executeQuery();  
                      
          while(rs.next()){
          ty=rs.getString("type");
             //out.print(ty);   
               if(ty.equals("2")){
        
           response.sendRedirect("001.jsp");  
           }    
           else{
           response.sendRedirect("updb.jsp");
           }           
     }

    
      //}
      
     rs.close();
     sqll.close();
     conn.close();

     
     
   %>
  </body>
</html>
