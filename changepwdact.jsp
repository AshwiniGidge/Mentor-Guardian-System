
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection con = null;
   
           String sname=session.getAttribute("user").toString();
           String op=request.getParameter("op");
	    String np=request.getParameter("np");
           
            
                try
		{
		
	con = databasecon.getconnection();
        
        
        String q = "select * from student where sname = '"+sname+"' and password = '"+op+"'";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
        
        if(rs.next())
        {
        
        
        
        
        
        
	PreparedStatement pst2=con.prepareStatement("update student set password = '"+np+"'  where sname = '"+sname+"' and password = '"+op+"'");
       
        pst2.executeUpdate();
                
      response.sendRedirect("student.jsp?msg=success"); 
       }
        
        else{
            
            
            
            response.sendRedirect("changepwd.jsp?msg=success"); 
            
            
        }
	   
                }
                
                
                
                
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>