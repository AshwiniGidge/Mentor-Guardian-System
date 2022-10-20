<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<%
    String mentorname = request.getParameter("fname");
    System.out.println(mentorname);
    String password = request.getParameter("password");
    String yr = request.getParameter("yr");
    session.setAttribute("yr",yr);
    String sem = request.getParameter("sem");
    session.setAttribute("sem",sem);
    System.out.println(password);
    try{
      
		
	Connection con = databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from mentor where mentorname='"+mentorname+"' and password='"+password+"' and yr = '"+yr+"' and sem = '"+sem+"'");
       if(rs.next())
        {
         String  user = rs.getString(2);
		   session.setAttribute("user",user);
		   System.out.println("User:"+user);
                   response.sendRedirect("mentorhome.jsp?msg=Login");
        }
       else 
        {
            response.sendRedirect("mentor.jsp?msg1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in mentor.jsp"+e.getMessage());
    }
%>


