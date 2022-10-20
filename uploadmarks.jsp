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
<body>
     <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Marks Uploaded...');</script>
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
                    <li><a href="#" class="selected">Admin</a></li>
                    <li><a href="#">Mentor</a></li>
                    <li><a href="#">Student</a></li>
                    <li><a href="#">Contact</a></li>
               </ul>
        </div>
        </div>
        <div id="content_wrapper">
        <div id="content">
        <div class="panel" id="home">
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
    						
        Connection con = databasecon.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from student");    
        
	ResultSet rs=pst.executeQuery();
        %>

             
                      <center>
                          <form action="uploadmarks1.jsp">
                              <table  style="border:0px solid;width:500px">
                                  <tr>
                                      <td>
                                          <label style="font-size: 20px">Select Student:</label>
                                      </td>&nbsp;&nbsp;&nbsp;&nbsp;
                                      <td>
                                          <select name="student" style="width: 80px">
                <%
       
   while(rs.next()){
     
            %>
            <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                  <%  }
%>
        </select>
                                      </td>
        <td>
            <select name="yr" required="">
                <option value="">--Select Yr--</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
        </td>
        <td>
            <select name="sem" required="">
                <option value="">--Select Sem--</option>
                <option value="1">1</option>
                <option value="2">2</option>
            </select>
        </td>
                                  </tr>

            </table>
                <tr>
                                        
            <input type="submit" ></input>
        
        </tr>
        </form>
        </center>  
                
                
                                
       
        
        
   
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
              <li><a href="adminhome.jsp"  style="text-decoration:none;color:black;"><font size="3">Home</a></li>
              <li><a href="addmentor.jsp"style="text-decoration:none;color:black;">Add Mentor</a></li>
              <li><a href="addstudent.jsp"style="text-decoration:none;color:black;">Add Student</a></li>
              <li><a href="addsubjects.jsp"style="text-decoration:none;color:black;">Add Subject</a></li>
              <li><a href="uploadmarks.jsp"style="text-decoration:none;color:black;">Upload Marks</a></li>
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
         </div>

</body>
</html>
