<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
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
<style>
    td{
        border: 1px solid black;
        text-align: center;
        border:1px solid white;
    }
    th{
        background-color: wheat;
        color: black;
        border: 1px solid black;
        text-align: center;
    }
</style>
</head>
<body>
    <div id="slider">
    <div id="header_wrapper">
    <div id="header"><br><br>
    <font size="6" color="#FFFF00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student Mentoring System</font>
    </div>
    </div>
        
        <div id="menu_wrapper">
        <div id="menu">
                <ul class="navigation">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Admin</a></li>
                    <li><a href="#">Mentor</a></li>
                    <li><a href="#" class="selected">Student</a></li>
                    <li><a href="#">Contact</a></li>
               </ul>
        </div>
        </div>
        <div id="content_wrapper">
        <div id="content">
        <div class="panel" id="home">
        <div class="col_550 float_l">
        <div class=""></div>
         <%
        
            
       
            
        Connection con = databasecon.getconnection();
        Statement st = con.createStatement();
        String sname = session.getAttribute("user").toString();
        System.out.println("rollno" +sname);
        ResultSet rs = st.executeQuery("select * from student where  sname='"+sname+"'");
        if(rs.next()){
            
        String mentor=session.getAttribute("mentor").toString();
        }
     
        %>

        <form action="s_sissueact.jsp" method="post">
            
            
            <table>
                <tr>
                    <th>Mentor</th>
                    <th><%=rs.getString("mentor")%></th>
                
                
                </tr>
                    
                    <tr>
                        <th>Type Issue</th>
                        <th><textarea name="issue" required></textarea></th></tr>
                
                
                
                    <tr><th><input type="submit" value="Send"></th></tr>
            </table>
            
            
            
            
            
            
        </form>
        
        
    
     <br>
      
      
        </div>
        <br><Br><br>  
        <div class="col_300 float_r">
        <h2>Student Menu</h2>
         <li><a href="studenthome.jsp"  style="text-decoration:none;color:black;">Home</a></li>

              <li><a href="studentattendance.jsp"style="text-decoration:none;color:black;">View Total Attendance</a></li>
              <li><a href="s_viewmarks1.jsp"style="text-decoration:none;color:black;">View Marks</a></li>
              <li><a href="s_sissue.jsp"style="text-decoration:none;color:black;">Send Issue</a></li>
              <li><a href="s_viewreply.jsp"style="text-decoration:none;color:black;">View Reply</a></li>
              <li><a href="changepwd.jsp"style="text-decoration:none;color:black;">Change Password</a></li>
               <li><a href="logout.jsp"style="text-decoration:none;color:black;">Logout</a></li>
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
