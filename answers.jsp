<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

                     
<% 
    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
										
					String strDate = sdfDate.format(now);
                                        
                                        try{
                                        
                                        
int a=Integer.parseInt(request.getParameter("tot"));
Connection con = databasecon.getconnection();
 Statement st1 = con.createStatement();
ResultSet rs2;
int m=0;
int k=0;
for(int i=1;i<a;i++)
{
    
String b=request.getParameter("n"+i);
String attendance=request.getParameter("attendance"+i);
 Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from student where rollno = '"+b+"' ");
        String mentor=request.getParameter("mentor");
        if(rs.next())
        {
        
        
        } 
        
        
        String q = "delete from attendance where sname = '"+rs.getString("sname")+"' and branch = '"+rs.getString("branch")+"' and yr = '"+rs.getString("yr")+"' and sem = '"+rs.getString("semester")+"' and date = '"+strDate+"'";
        Statement st2 = con.createStatement();
        st2.executeUpdate(q);
         
        
        
        
        

PreparedStatement pst2=con.prepareStatement("insert into attendance values(?,?,?,?,?,?,?,?)");
       
        pst2.setString(1,b);
        pst2.setString(2,rs.getString("sname"));
        pst2.setString(3,rs.getString("branch"));
        pst2.setString(4,rs.getString("yr"));
        pst2.setString(5,rs.getString("semester"));
        pst2.setString(6,strDate);
        pst2.setString(7,attendance);
        pst2.setString(8,rs.getString("mentor"));
        pst2.executeUpdate();
         
        
}

       response.sendRedirect("m_a_attendance.jsp?msg=success");
                                        }
  
  catch(SQLException e)
        {
		out.println(e);
	    }  
%>