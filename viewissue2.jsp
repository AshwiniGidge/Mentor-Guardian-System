
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection con = null;
   
           String issue=request.getParameter("issue");
           String mentor=request.getParameter("mentor");
	    String user=request.getParameter("student");
            
           
		
          try  
            {
		
	con = databasecon.getconnection();
	PreparedStatement pst2=con.prepareStatement("insert into reply values(?,?,?)");
        pst2.setString(1,mentor);
        pst2.setString(2,user);
        pst2.setString(3,issue);
      
        pst2.executeUpdate();
                
       response.sendRedirect("viewissue.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>