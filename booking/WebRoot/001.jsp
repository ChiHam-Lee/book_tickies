<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date"%>
 <%request.setCharacterEncoding("UTF-8");%> 
    <meta charset="UTF-8">
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
          <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
    <title>独家影院</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/app.css" type="text/css"/>
    
    <script type="text/javascript">
     function showTime(){
    nowtime=new Date();
    year=nowtime.getFullYear();
    month=nowtime.getMonth()+1;
    date=nowtime.getDate();
    document.getElementById("mytime").innerText=year+"年"+month+"月"+date+" "+nowtime.toLocaleTimeString();
}

setInterval("showTime()",1000);
</script>
<script>
      function updb(){
      window.location.href="001.jsp";
      //alert("chenggong5555")
      }
      </script> 


</head>
<body bgcolor="#949494">
      
<div class="wrap">
    <div class="box">
        <div class="header">           
            <img src="images/110.jpg" width='400' height='100' alt="一号厅" align=right/>
        </div>       
        
       <br>.
       <br>
       
        
        <br>
        
        <div class="tittle">
            <div class="t_1">
                <span class="sp1"></span>
                <p>可选</p>
            </div>
            <div class="t_2">
                <span class="sp2"></span>
                <p>已选</p>
            </div>
            <div class="t_3">
                <span class="sp3"></span>
                <p>已售</p>
                &emsp; &emsp; &emsp; &emsp;
                <input type="submit" name="刷新" value="刷新" onclick="updb()" style="font-size:16px;width:80px;height:35px;font-family:楷体 ;color:black;">
            </div>
        </div>
        
        <center><div id="blink"><font size=6></>今日 影片：《SUPERMAN》 </A> </center></font></div>
<script language="javascript">
function changeColor(){ 
var color="#fff|#000|blue|gray|brown|beige"; 
color=color.split("|"); 
document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)]; 
} 
setInterval("changeColor()",200); </script>
   
  
     <% PreparedStatement sqll=null;    
      ResultSet rs=null;
     boolean flag2=false; 
     
     Class.forName("com.mysql.jdbc.Driver").newInstance();
     Connection conn=java.sql.DriverManager.getConnection
     ("jdbc:mysql://localhost:3306/movie","root","123456");
    
     
     sqll=conn.prepareStatement("select * from seat");
    rs =sqll.executeQuery();             
          if(rs.next()){
          flag2=true;
          }
          
          if(flag2==true){
           
      }
    
    
    %>
                <span id="mytime" style="color:white" style="font-size:20px"></span>
        <img src="images/pingmu.png" class="pingmu">
        <div class="content">
            <div class="one" pai="1">
                <ul>
                    <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
              
            </div>
            <div class="two" pai="2">
                <ul>
                     <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
                  
            </div>
            <div class="three" pai="3">
                <ul>
                      <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
            </div>
            <div class="four" pai="4">
                <ul>
                      <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
            </div>
            <div class="five" pai="5">
                <ul>
                      <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
            </div>
            <div class="six" pai="6">
                <ul>
                      <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
            </div>
            <div class="seven" pai="7">
                <ul>
                      <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
            </div>
            <div class="eight" pai="8">
                <ul>
                      <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
            </div>
            <div class="nine" pai="9">
                <ul>
                      <li typ="<%=rs.getString("type")%>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                    <li typ="<%=rs.getString("type") %>" onClick="check(this)"></li>
                    <%rs.next(); %>
                </ul>
                
                <% rs.close();
     sqll.close();
     conn.close(); %>
     
            </div>
        </div>
        <div class="zw">
            <p>已选座位<span>最多可以选择1个座位</span></p>
            <div class="yxz"></div>
            
        </div>
    </div>
    <div class="footer">
        <div class="f_left">
            <div class="t_left">合计：<span class="rmb">¥<span>0</span></span>
            </div>
            <div class="t_right">¥<span class="danjia"></span>*<span class="num">0</span></div>
        </div>
        
        <div class="f_right" onclick="buyseat()">购票</div>
    </div>
    
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
    //判断页面加载完成
    window.onload = function () {
        if (document.readyState == "complete") {
            $("body").show();
        }
    };
    var arr = []; //已选座位数组
    var dj = 30; //电影票单价 number
    var xxx=new Array();
    var yyy=new Array();
    var ij=0;
    var ji=0;
    
    $(".danjia").text(dj);
    /*
     遍历检查售票状态
     typ ==0 可选
     typ ==1 已选
     typ ==2 已售
     */
    $(".content li").each(function (index) {
        var typ = $(".content li").eq(index).attr("typ");
        if (typ == "2") {
            $(".content li").eq(index).css("background", "#000000");
        }
    });
    //已选座位添加
    function add(msg) {
        var html = '<div>' + msg + '</div>';
        return html;
    }
    //选座点击事件
    function check(dom) {
    
        var txt = $(dom).parent().parent().attr('pai') + "排" + parseInt($(dom).index() + 1) + "座";
        var typ = $(dom).attr("typ");
        if (typ == "0") {
            if (arr.length > 0) {
                alert("一人只能选择1个座位！");
                return false;
            } else {
            
                $(dom).css("background", "#778899");
                $(dom).attr("typ", "1");
                arr.push(txt);
                $(".yxz").append(add(txt));
                $(".num").text(arr.length);//已选电影票数量
                $(".rmb span").text(dj * arr.length);//已选电影票总价
                 xxx[0]=$(dom).parent().parent().attr('pai');
                yyy[0]=parseInt($(dom).index() + 1);
                //xxx[ij++]=$(dom).parent().parent().attr('pai');
                //yyy[ji++]=parseInt($(dom).index() + 1);
               // alert(xxx[0]);
                
           
            }
           
        } else if (typ == "2") {
            alert("该座位已售出！");
            return false;
        } else {
            $(dom).css("background", "#f5f5f5");
            $(dom).attr("typ", "0");
            var index = arr.indexOf(txt);
            arr.removeByValue(txt);//指定数组删除
            $(".yxz div").eq(index).remove();
            $(".num").text(arr.length);//已选电影票数量
            $(".rmb span").text(dj * arr.length);//已选电影票总价
            
        }
                
        
    }
   
       
       
    //数组删除指定元素方法
    Array.prototype.removeByValue = function (val) {
        for (var i = 0; i < this.length; i++) {
            if (this[i] == val) {
                this.splice(i, 1);
                break;
            }
        }
      }  
     function buyseat(){
       window.location.href="buy.jsp?xxx=" + xxx + "&yyy=" + yyy;
       //alert(xxx[0]);
      }
        
    
</script>
               
<br>
<br>
<br>
<br>
</body>


</html>