<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection con = null;
   String mentor[] = new String[100];
        int e = 0;
        int i = 0;
	try
            {
		
	con = databasecon.getconnection();
        
        
        
        String q = "select * from mentor";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(q);
        
        while(rs.next()){
            
            
            mentor[i]=rs.getString(1);
            
            i++;
            
        }
            
               /* Assigning Students here  */
             
        String q1 = "select * from student";
        Statement st1 = con.createStatement();
        ResultSet rs1 = st1.executeQuery(q1);
        
        
        while(rs1.next()){
            
            
         
            
            
            if(e<5){
                                  
                               
                            PreparedStatement ps=con.prepareStatement("insert into assigned values(?,?)");
                            ps.setString(1,mentor[0]);
                            ps.setString(2,rs1.getString("sname"));
                            ps.executeUpdate();
            
                              
            
            
            }else if(e>=5 && e<10){
                                  
                                  
                                
                            PreparedStatement ps1=con.prepareStatement("insert into assigned values(?,?)");
                            ps1.setString(1,mentor[1]);
                            ps1.setString(2,rs1.getString("sname"));
                            ps1.executeUpdate();
                                 
                             
                              
            }else if(e>=10 && e<15){
                               
                                  
                               
                            PreparedStatement ps2=con.prepareStatement("insert into assigned values(?,?)");
                            ps2.setString(1,mentor[2]);
                            ps2.setString(2,rs1.getString("sname"));
                            ps2.executeUpdate();
                               
                              
        
                              
                               
            }else if(e>=15 && e<20){
                               
                            PreparedStatement ps3=con.prepareStatement("insert into assigned values(?,?)");
                            ps3.setString(1,mentor[3]);
                            ps3.setString(2,rs1.getString("sname"));
                            ps3.executeUpdate();
                                 
                                
                              }
                              e++;
            
          
                              
                              
        }
             
        
           
        /* end */ 
        
        
        
        
        
        
        
        
        
        
	
                
       
       }
	  
	catch(SQLException ee)
        {
		out.println(ee);
	    }  
           %>
</body>
</html>