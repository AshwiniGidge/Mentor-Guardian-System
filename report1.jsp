<%@page import="Mail.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
    Connection con = null;
    String student = request.getParameter("sname");
    String yr = request.getParameter("yr");
    String sem = request.getParameter("sem");
    String email = null;
    String sub1 = null;
     String sub2 = null;
      String sub3 = null;
       String sub4 = null;
        String sub5 = null;
         String sub6 = null;
         String mar1 = null;
      String mar2 = null;
       String mar3 = null;
        String mar4 = null;
         String mar5 = null;
          String mar6 = null;
   
    String msg = null;
	try
            {
		
	con = databasecon.getconnection();
        
        String q = "select * from student where sname = '"+student+"' and yr = '"+yr+"' and semester = '"+sem+"'";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
        
        if(rs.next()){
            
           email = rs.getString("parent"); 
         
            
        }
            
         String q1 = "select * from marks where name = '"+student+"' and yr = '"+yr+"' and sem = '"+sem+"'";
        Statement st1 = con.createStatement();
        ResultSet rs1 = st1.executeQuery(q1);
        
        if(rs1.next()){
            
            
            mar1 = rs1.getString(4);
             mar2 = rs1.getString(5);
              mar3 = rs1.getString(6);
               mar4 = rs1.getString(7);
                mar5 = rs1.getString(8);
                 mar6 = rs1.getString(8);
            
            
            
            
            
        }
            
             String q12 = "select * from subjects where yr = '"+yr+"' and sem = '"+sem+"'";
        Statement st12 = con.createStatement();
        ResultSet rs12 = st1.executeQuery(q12);
        
        if(rs12.next()){
            
            sub1 = rs12.getString(3);
             sub2 = rs12.getString(4);
              sub3 = rs12.getString(5);
               sub4 = rs12.getString(6);
                sub5 = rs12.getString(7);
                 sub6 = rs12.getString(8);
            
         
        
        }
        
        
        
         
        msg  ="Student Name:"+student+"\n Marks :\n "+sub1+" :"+mar1+"\n  "+sub2+" : "+mar2+"\n  "+sub3+" : "+mar3+"\n "+sub4+" : "+mar4+"\n  "+sub5+" : "+mar5+"\n  "+sub6+" : "+mar6+"\n   " ;     
        Mail m = new Mail();
        m.secretMail(msg,email,email);
        
        
	response.sendRedirect("report.jsp?m2=Success");
                
       
       }
	  
	catch(SQLException ee)
        {
		out.println(ee);
	    }  
           %>
