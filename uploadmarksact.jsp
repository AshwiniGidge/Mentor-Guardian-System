<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
            <%
        
            String yr =request.getParameter("yr");
            String sem = request.getParameter("sem");
   	
	Connection con = databasecon.getconnection();
            String Name=request.getParameter("student");
            String Subject1=request.getParameter("emark");
            String Subject2=request.getParameter("mmark");
            String Subject3=request.getParameter("pmark");
            String Subject4=request.getParameter("cmark");
            String Subject5=request.getParameter("esmark");
            String Subject6=request.getParameter("smark");

                try
		{
	
                    
                    
            String q = "delete from marks where name = '"+Name+"'";
            Statement st = con.createStatement();
            st.executeUpdate(q);
                            
                    
                    
                    
                    
                    
                    
                    
                    
	PreparedStatement pst2=con.prepareStatement("insert into marks values(?,?,?,?,?,?,?,?,?)");
       
        pst2.setString(1,Name);
        pst2.setString(2,yr);
        pst2.setString(3,sem);
        pst2.setString(4,Subject1);
        pst2.setString(5,Subject2);
        pst2.setString(6,Subject3);
        pst2.setString(7,Subject4);
        pst2.setString(8,Subject5);
        pst2.setString(9,Subject6);
        pst2.executeUpdate();
                
       response.sendRedirect("uploadmarks.jsp?msg=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>