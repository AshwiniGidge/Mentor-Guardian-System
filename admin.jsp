<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Mentoring System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" title="no title" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
                 <%
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Invalid Username or Password!!!');</script>
        <%}%> 
    <style>
        .li {
            
            text-decoration: none;
            color: red;
            font-size: 4px;
        } 
    </style>
    <div id="slider">
    <div id="header_wrapper">
    <div id="header"><br><br>
    <font size="6" color="#FFFF00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student Mentoring System</font>
    </div>
    </div>
        
        <div id="menu_wrapper">
        <div id="menu">
                <ul class="navigation">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="admin.jsp" class="selected">Admin</a></li>
                    <li><a href="mentor.jsp">Mentor</a></li>
                    <li><a href="student.jsp">Student</a></li>
                     <li><a href="contact.jsp">Contact</a></li>
               </ul>
        </div>
        </div>
        <div id="content_wrapper">
        <div id="content">
        <div class="panel" id="home">
        <div class="col_550 float_l">
        <div class=""></div>
         
        <br><Br><br>  
        <center>  <form name="myform" action="adminact.jsp" method="post">
        <table  style="border:0px solid;width: 50%">
         <font color="white" size="5">Admin Login</font></h2> 
         <br><br>
                 <tr><td><font color="white">User Name :</td><td><input type="text" name="username" required="" /></td></tr>
                 <tr><td><br><font color="white">Password  :</td><td><br><input type="password" name="password" required="" /></td></tr>

                                 <tr align="center"><td colspan="2" style="text-align:center"><br><input type="submit" name="submit" value="    Login    " /></td></tr>
         <tr></tr>      
         </table>
         </form>
         </center>	
        
        </div>
        <br><Br><br>  
        <div class="col_300 float_r">
        <h2>Sidebar Menu</h2>
              <li><a href="admin.jsp"  style="text-decoration:none;color:black;">Admin</a></li>
              <li><a href="mentor.jsp"style="text-decoration:none;color:black;">Mentor</a></li>
              <li><a href="student.jsp"style="text-decoration:none;color:black;">Student</a></li>
              <li><a href="index.html"style="text-decoration:none;color:black;">Contact</a></li>
         </div>
         </div> 
         </div>
         </div>
         </div> 
         </div> 
         <div id="footer">
         <br><br>
         Developed by <a href="http://1000projects.org/"></a> 

</body>
</html>
