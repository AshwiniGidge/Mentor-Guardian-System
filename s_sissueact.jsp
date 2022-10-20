
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection con = null;
   
           String issue=request.getParameter("issue");
           String mentor=session.getAttribute("mentor").toString();
	    String user=session.getAttribute("user").toString();
            
           
		
          try  
            {
		
	con = databasecon.getconnection();
	PreparedStatement pst2=con.prepareStatement("insert into issues values(?,?,?)");
        pst2.setString(1,user);
        pst2.setString(2,mentor);
        pst2.setString(3,issue);
      
        pst2.executeUpdate();
                
       response.sendRedirect("s_sissue.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>