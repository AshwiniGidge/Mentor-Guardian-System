 <%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
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
                    <li><a href="admin.jsp"class="selected">Admin</a></li>
                    <li><a href="mentor.jsp" >Mentor</a></li>
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
    
     <%
  SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
										
					String strDate = sdfDate.format(now);
    try {
        
        String yr = request.getParameter("yr");
        System.out.println("yr" +yr);
        String branch = request.getParameter("branch");
         System.out.println("branch" +branch);
        String semester = request.getParameter("sem");
         System.out.println("semester" +semester);
        
       
	Connection con = databasecon.getconnection();
        Statement st = con.createStatement();
//        ResultSet rs = st.executeQuery("select * from student where yr='"+yr+"' and branch='"+branch+"' and semester='"+semester+"' ");
 
String a=request.getParameter("t");
Statement st1 = con.createStatement();
ResultSet rs2=st1.executeQuery("select * from student where yr='"+yr+"' and branch='"+branch+"' and semester='"+semester+"' ");
String mentor=request.getParameter("mentor");
%>
<center>
 Date :   <%=strDate%>
 <hr style="width:50%">
 <table style="border:0px solid">
 <form method=post action="answers.jsp" style="border:1px solid white">
     <tr> <th>Roll Number</th>
     <th>Name</th>
     <th>Year</th>
     <th>Semester</th>
     <th colspan="2">Status</th></tr>
    
<%
int i=1;
while(rs2.next())
{
%><input type=hidden value=<%=rs2.getString(4) %> name="n<%=i %>">
    <tr>
        <td><%= rs2.getString("rollno") %></td>
        <td><%= rs2.getString("sname") %></td>
        <td><%= rs2.getString("yr") %></td>
        <td><%= rs2.getString("semester") %></td>

        
        <td><input type=radio value=Present name=attendance<%=i %>>Present</td>
        <td><input type=radio value=Absent name=attendance<%=i %>>Absent</td>
        
    </tr>
   
<%
i++;
}
%>
<tr style="width:50%">
<input type=hidden value=<%=i%> name="tot">
    <br><td><input type=submit value=Submit style="font-size: small"></input></td></tr></center>
</form>
</table> 
       
         
        </center>
         </form>
        	
        
  </div>
        <br><br>  
                    <div class="col_300 float_r">
        <h2>Admin Menu</h2>
              <li><a href="adminhome.jsp"  style="text-decoration:none;color:black;"><font size="3">Home</a></li>
              <li><a href="addmentor.jsp"style="text-decoration:none;color:black;">Add Mentor</a></li>
              <li><a href="addstudent.jsp"style="text-decoration:none;color:black;">Add Student</a></li>
              
              <li><a href="m_a_attendance.jsp"style="text-decoration:none;color:black;">Upload Attendance</a></li>
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

</body>
</html>
<%}
         catch (Exception e) {
        e.printStackTrace();
        }
        %>