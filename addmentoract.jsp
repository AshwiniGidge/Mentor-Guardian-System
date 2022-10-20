<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection con = null;
           
	    String mentorname=request.getParameter("fname");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            String mentorid=request.getParameter("fid");
            String department=request.getParameter("dep");
            String mobile=request.getParameter("mobile");
             String yr=request.getParameter("yr");
            String sem=request.getParameter("sem");
            
                try
		{
		
	con = databasecon.getconnection();
	PreparedStatement pst2=con.prepareStatement("insert into mentor values(?,?,?,?,?,?,?,?)");
       
        pst2.setString(1,mentorid);
        pst2.setString(2,mentorname);
        pst2.setString(3,password);
        pst2.setString(4,email);
        pst2.setString(5,department);
        pst2.setString(6,mobile);
        pst2.setString(7,yr);
        pst2.setString(8,sem);
        pst2.executeUpdate();
                
       response.sendRedirect("addmentor.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>