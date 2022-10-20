<%@page import="Mail.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
    Connection con = null;
    String student = request.getParameter("sname");
    String email = null;
    String msg = null;
    
    
	try
            {
		
	con = databasecon.getconnection();
        
        String q = "select * from student where sname = '"+student+"'";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
        
        if(rs.next()){
            
           email = rs.getString("parent"); 
         
            
        }
            
        String q1 = "select * from attendance where sname = '"+student+"'";
        Statement st1 = con.createStatement();
        ResultSet rs1 = st1.executeQuery(q1);
        
        if(rs1.next()){
            
            
            
        msg  =" Dear Parent,\n Your Son/Daughter: "+student+" is "+rs1.getString("att")+" today.";     
        Mail m = new Mail();
        m.secretMail(msg,email,email);
            
            
        }
        
        
        response.sendRedirect("report.jsp?m1=Success");
	
                
       
       }
	  
	catch(SQLException ee)
        {
		out.println(ee);
	    }  
           %>
