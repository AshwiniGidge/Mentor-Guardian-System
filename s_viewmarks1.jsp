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
                    <li><a href="#">Mentor</a></li>
                    <li><a href="#" class="selected">Student</a></li>
                    <li><a href="#">Contact</a></li>
               </ul>
        </div>
        </div>
        <div id="content_wrapper">
        <div id="content" style="padding: 0">
        <div class="panel" id="home">
        <div class="col_550 float_l">
        <div class="cleaner"></div>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<br><br>
<center>
        <%
            
              
                String student=session.getAttribute("user").toString();
    
    String yr = session.getAttribute("yr").toString();
     String sem = session.getAttribute("semester").toString();              
 
     Connection con = databasecon.getconnection();
try{ 
    
      String q = "select *  from subjects where yr = '"+yr+"' and sem = '"+sem+"'";
            Statement st = con.createStatement();
          ResultSet rs1 =  st.executeQuery(q);
    						
       
        PreparedStatement pst=con.prepareStatement("select * from marks where yr = '"+yr+"' and sem = '"+sem+"' and name = '"+student+"'");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center>
           <h2><u>Marks</u></h2>
           <h3>Student Name:  <b><u><%=student%></u></b></h3>
           <table style="width:100%; margin-left: 0" border="1">
               
     <%
       
   if(rs1.next()){
     
            %>          
            <tr>
<!--               <td>Name</td>
               <td>Sem</td>-->
                  <td><%=rs1.getString(3)%></td>
                   <td><%=rs1.getString(4)%></td>
                   <td><%=rs1.getString(5)%></td>
                   <td><%=rs1.getString(6)%></td>
                    <td><%=rs1.getString(7)%></td>
                 <td><%=rs1.getString(8)%></td>
                
             
                
                
                
                                
        </tr>
       
        
        
      <%  }
%>


<%
       
   while(rs.next()){
     
            %><tr>
<!--              <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>-->
<!--                  <td><%=rs.getString(3)%></td>-->
                   <td><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                   <td><%=rs.getString(8)%></td>
                   <td><%=rs.getString(9)%></td>
             
                
                
                
                                
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
        <br><br><br>  
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
         </div>

</body>
</html>
