<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<%
    String email = request.getParameter("email");
    System.out.println(email);
    String password = request.getParameter("password");
    System.out.println(password);
    
    try{
      
		
	Connection con = databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from student where email ='"+email+"' and password='"+password+"'");
       if(rs.next())
        {
         String  user = rs.getString(1);
         String  roll = rs.getString(4);
         String  mentor = rs.getString(11);
         String  yr = rs.getString("yr");
         String  semester = rs.getString("semester");
		   session.setAttribute("user",user);
		   System.out.println("User:"+user);
                   session.setAttribute("email",email);
                   session.setAttribute("roll",roll);
                   session.setAttribute("mentor",mentor);
                   session.setAttribute("semester",semester);
                   session.setAttribute("yr",yr);
                   response.sendRedirect("studenthome.jsp?msg=Login");
        }
       else 
        {
            response.sendRedirect("student.jsp?msg1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in student.jsp"+e.getMessage());
    }
%>


