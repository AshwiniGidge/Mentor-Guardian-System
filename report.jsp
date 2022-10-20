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

</head>
    <script src="js/hide.js"></script>
    
<body>
     <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Mentor Login Successfully');</script>
        <%}%> 
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
        <div class="panel" id="home">
        <div class="col_570 float_l">
        <div class=""></div>
        <%
        
            String mentor = session.getAttribute("user").toString();
       
            
        Connection con = databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from student where mentor = '"+mentor+"'");
      %>
        <table style="width:100%">
            <tr>
                <th>Student Name</th>
                 <th>Branch</th>
                  <th>Year</th>
                   <th>Semester</th>
                  <th>Send Marks</th>
<!--                    <th id="London">Send Attendance</th>-->
                    <th>Report To Parent</th>
            </tr>
            
            <%
            while(rs.next())
            {            
            %>
            
                        <tr>
                              <td><%=rs.getString("sname")%></td>
                              <td><%=rs.getString("branch")%></td>
                              <td><%=rs.getString("yr")%></td>
                              <td><%=rs.getString("semester")%></td>
                            <td><a href="report1.jsp?sname=<%=rs.getString("sname")%>&yr=<%=rs.getString("yr")%>&sem=<%=rs.getString("semester")%>">send</a></td>
<!--                           <td><a href="report2.jsp?sname=<%=rs.getString("sname")%>&yr=<%=rs.getString("yr")%>&sem=<%=rs.getString("semester")%>">send</a></td>-->
                            <td><form action="report3.jsp" method="post">
                                    
                                    <input type="hidden" value="<%=rs.getString("sname")%>" name="sname"></input>
                                    <textarea name="msg" rows="2" cols="15"></textarea><center><input type="submit" value="Report" style="padding:5px;margin:0;border-radius:3px;font-size: 15px"></input></center></form></td>
                            
                        
                        </tr>
                        
                        
                        <%}%>
                        
                    </table>
               
   
    
     <br>
    
     <br>
        </div>
        <br><Br><br>  
        <div class="col_300 float_r">
        <h2>Mentor Menu</h2>
              <li><a href="mentorhome.jsp"  style="text-decoration:none;color:black;"><font size="3">Home</a></li>
              <li><a href="m_v_attendance_1.jsp"style="text-decoration:none;color:black;">View Attendance</a></li>
              
              <li><a href="viewmarks1.jsp"style="text-decoration:none;color:black;">View Marks</a></li>
              <li><a href="report.jsp"style="text-decoration:none;color:black;">Report to Parent</a></li>
              <li><a href="viewissue.jsp"style="text-decoration:none;color:black;">View Issues</a></li>
              <li><a href="logout.jsp"style="text-decoration:none;color:black;">Logout</a></li></ul>
         </div>
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
