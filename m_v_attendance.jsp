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
    th{
        background-color: black;
        color:white;
    }
</style>
</head>
<body>
     <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Mentor Login Successfully');</script>
        <%}%> 

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
                    <li><a href="#" class="selected">Mentor</a></li>
                    <li><a href="#">Student</a></li>
                    <li><a href="#">Contact</a></li>
               </ul>
        </div>
        </div>
        <div id="content_wrapper">
        <div id="content">
        <div class="col_550 float_l">
        <div class=""></div>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<br><br>
<center>
    <%
    
try{ 
    	String mentor = session.getAttribute("user").toString();
        Connection con = databasecon.getconnection();
        String sname=request.getParameter("sname");
        PreparedStatement pst=con.prepareStatement("select * from attendance where sname='"+sname+"' and mentor='"+mentor+"'");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center>
           <h2>Attendance</h2>
           
           <table style="width:80%" border="1">
           
? <tr>
??? 
  <th>Roll Number</th>
  <th>Name</th>
   <th>Branch</th>
    <th>Date</th>
    <th>Status</th>
    <th>Percentage(%)</th>
               
                    
 ?   
 ??? </tr>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(3)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                   <td><a href="aavgact.jsp?roll=<%=rs.getString(1)%>">Click Here</a></td>
             
                
                
                
                                
        </tr>
       
        
        
      <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
    
      
 
	</div>
        <br><Br><br>  
        <div class="col_300 float_r">
        <h2>Mentor Menu</h2>
              <li><a href="mentorhome.jsp"  style="text-decoration:none;color:black;"><font size="3">Home</a></li>
              <li><a href="m_v_attendance_1.jsp"style="text-decoration:none;color:black;">View Attendance</a></li>
              <li><a href="addsubjects.jsp"style="text-decoration:none;color:black;">Add Subject</a></li>
              <li><a href="uploadmarks.jsp"style="text-decoration:none;color:black;">Upload Marks</a></li>
              <li><a href="viewmarks1.jsp"style="text-decoration:none;color:black;">View Marks</a></li>
              <li><a href="report.jsp"style="text-decoration:none;color:black;">Report to Parent</a></li>
              <li><a href="viewissue.jsp"style="text-decoration:none;color:black;">View Issues</a></li>
              <li><a href="logout.jsp"style="text-decoration:none;color:black;">Logout</a></li></ul>
         </div>
         </div>
         </div>
         </div> 
         </div> 
         <div id="footer">
         <br><br>
         Developed by <a href="http://1000projects.org/"></a>
         </div>

</body>
</html>
