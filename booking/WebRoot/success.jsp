<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("UTF-8");%> 
    <meta charset="UTF-8">
<%@ page language="java" import="java.sql.*,java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script>
      function updb(){
      window.location.href="001.jsp";
      //alert("chenggong5555")
      }
      </script> 

  </head>
  
  <body><center>
       <% 
       String[] number = (String[])session.getAttribute("number");
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
          ty=rs.getString("getid");   
          out.println("<font color=\"red\" size=\"18\" face=\"Arial\">恭喜您，购票成功 </font>"+"<br>");
       
       out.println("<font color=\"red\" size=\"18\" face=\"Arial\">电       影    ：《superman》 </font>"+"<br>");
       out.println("<font color=\"red\" size=\"18\" face=\"Arial\">座       位    ："+number[0]+"号</font>"+"<br>");
       out.println("<font color=\"red\" size=\"18\" face=\"Arial\">时       间    ：2018/09/10/19：00</font>"+"<br>");
       out.println("<font color=\"red\" size=\"18\" face=\"Arial\">取票号 :"+ty+"</font>");     
                  
     } 
      //}     
     rs.close();
     sqll.close();
     conn.close();

       
       %>
       <br>
       <input type="submit" name="返回" value="返回" onclick="updb()" style="font-size:66px;width:500px;height:100px;font-family:楷体 ;color:red;">
       </center>
  </body>
</html>
