<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("UTF-8");%> 
    <meta charset="UTF-8">
<%@ page language="java" import="java.sql.*,java.io.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <base href="<%=basePath%>">
    
    <title>Cookie</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="app/css" href="styles.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/app.css" type="text/css"/>
    -->
  </head>
<html>
  <body bgcolor"#949494">
   <%                    

            //把用户名和密码保存在Cookie对象里面
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            Cookie nameCookie = new Cookie("name",name);
            
            nameCookie.setMaxAge(86400);
            
            response.addCookie(nameCookie);
                  
     %>
     <input type="submit" name="返回" value="返回" onclick=window.location="001.jsp" style="font-size:33px;width:180px;height:90px;font-family:楷体 ;color:browm;"/>
     
    <center><div id="blink" ><font size=10>确认支付</div> </A> <hr>
<script language="javascript">
function changeColor(){ 
var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray"; 
color=color.split("|"); 
document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)]; 
} 
setInterval("changeColor()",200); 
</script>
    <img src="images/superman.jpg"></img></h2>
    <br>
    <h>电影 名称： superman/超人</h>
    <br>
    <h>上映时间：  2018年9月10日19：00</h><hr>
   <%
        String x= request.getParameter("xxx"); 
        String y= request.getParameter("yyy");
        String[] xx = x.split(",");
        String[] yy = y.split(",");
        //String[] number={"","","","",""};
        String[] number={""};
      for(int j=0;j<xx.length;j++){
       number[j]=xx[j]+yy[j];
      	//out.print(number[j]);
        }
               
        session.setAttribute("number", number);
        
        
    	 out.print("已选择座位:");
    	 for(int i=0;i<xx.length;i++){
    	 out.println(xx[i]+"排"+yy[i]+"座"+"\n"+"           ");  
    	 out.print("|");
    	 }
   	  
        
    	 
%>
     
      <script>
      function updb(){
      window.location.href="ifup.jsp";
      //alert("chenggong5555")
      }
      </script>      
  
    
           
     <br>
     <p>
     <p>
     <div >     
     <input type="submit" name="确认" value="确认" onclick="updb()" style="font-size:33px;width:200px;height:80px;font-family:楷体 ;color:browm;">
    
     
     </div>
  </body>
</html>
