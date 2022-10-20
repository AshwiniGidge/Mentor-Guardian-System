<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<!DOCTYPE html>
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
        <div class="panel" id="home">
        <div class="col_550 float_l">
        <div class=""></div>
        <%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

        <%
        String student=request.getParameter("student");
        
        
         String yr =request.getParameter("yr");
            String sem   = request.getParameter("sem");

    
try{ 
    						
        Connection con = databasecon.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from subjects where sem = '"+sem+"' and yr = '"+yr+"'");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center>
           <h4>Student Name:&nbsp;<%=student%></h4>
           
           <table style="width:80%" border="1">
           
  <tr>
        <tr>
        <th colspan="7">Subjects</th>
    </tr>
               
                    
     
     </tr>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString(3)%></td>
                 <td><%=rs.getString(4)%></td>
                  <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                   <td><%=rs.getString(8)%></td>                  
        </tr>
                   
                   <tr>
                       <form action="uploadmarksact.jsp">
                           <input type="hidden" name="yr" value="<%=yr%>">
                               <input type="hidden" name="sem" value="<%=sem%>">
                           <input type="hidden" name="student" value="<%=student%>">
                           <td style="width: 15%"><input type="number" name="emark"style="width:90%" required="" max="100" min="0"></td>
                           <td style="width: 15%"><input type="number" name="mmark"style="width:90%"required="" max="100" min="0"></td>
                       <td style="width: 15%"><input type="number" name="pmark"style="width:90%"required="" max="100" min="0"></td>
                       <td style="width: 15%"><input type="number" name="cmark"style="width:90%"required="" max="100" min="0"></td>
                       <td style="width: 15%"><input type="number" name="esmark"style="width:90%"required="" max="100" min="0"></td>
                       <td style="width: 15%"><input type="number" name="smark"style="width:90%"required="" max="100" min="0"></td>
                   </tr>
        <tr>
            <td colspan="6" style="text-align: center"><br><input type="submit" value="Upload Marks"style=""></td><br>
        </tr>
                       </form>
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
         </div> 
         <div id="footer">
         <br><br>
         Developed by <a href="http://1000projects.org/"></a>
         </div>

</body>
</html>
