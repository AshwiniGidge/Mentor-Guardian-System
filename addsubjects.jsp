<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Mentoring System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" title="no title" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
    <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Subjects Added Successfully');</script>
        <%}%>
    
    
    <style>
        .li {
            
            text-decoration: none;
            color: red;
            font-size: 4px;
        } 
    </style>
    <div id="slider">
    <div id="header_wrapper">
    <div id="header"><br><br>
    <font size="6" color="#FFFF00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student Mentoring System</font>
    </div>
    </div>
        
        <div id="menu_wrapper">
        <div id="menu">
                <ul class="navigation">
                    <li><a href="#">Home</a></li>
                    <li><a href="#" class="selected">Admin</a></li>
                    <li><a href="#">Mentor</a></li>
                    <li><a href="#">Student</a></li>
                    <li><a href="#">Contact</a></li>
               </ul>
        </div>
        </div>
        <div id="content_wrapper">
        <div id="content">
        <div class="panel" id="home">
        <div class="col_550 float_l">
        <div class=""></div>
                      <br> 
                             <center>  <form name="myform" action="addsubjectsact.jsp" method="post">
         <table style="border:0px solid">
             <font color="white" size="5">Add Subjects</font></h2> 
             <br><br>
            <tr><td><font color="white"> Year :</td>
         <td><select name="yr" style="width:170px;"  required="">
         
                 <option value="">--Select--</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
              </select></td>
                     <td><font color="white"> Semester :</td>
         <td><select type="text" name="sem" style="width:170px;"  required="">
                <option value="">--Select--</option>
                <option value="1">1</option>
                <option value="2">2</option>
             </select></td></tr>
         <tr><td><font color="white"> Subject 1 :</td><td><input type="text" name="sub1" required="" /></td>
         <td><font color="white"> Subject 2:</td><td><input type="text" name="sub2" required="" /></td></tr>
         <tr><td><font color="white"> Subject 3:</td><td><input type="text" name="sub3" required="" /></td>
         <td><font color="white"> Subject 4:</td><td><input type="text" name="sub4" required="" /></td></tr>
         <tr><td><font color="white"> Subject 5:</td><td><input type="text" name="sub5" required="" /></td>
         <td><font color="white"> Subject 6:</td><td><input type="text" name="sub6" required="" /></td></tr>
         
         <tr  style="text-align:center"><td colspan="4"><br><input type="submit" name="submit" value="    Add    " /></td></tr>
         <tr></tr>      
         </table>
         </form>
         </center>	</div>
        <br><Br><br>  
        <div class="col_300 float_r">
        <h2>Mentor Menu</h2>
              <li><a href="adminhome.jsp"  style="text-decoration:none;color:black;"><font size="3">Home</a></li>
              <li><a href="addmentor.jsp"style="text-decoration:none;color:black;">Add Mentor</a></li>
              <li><a href="addstudent.jsp"style="text-decoration:none;color:black;">Add Student</a></li>
              <li><a href="addsubjects.jsp"style="text-decoration:none;color:black;">Add Subject</a></li>
              <li><a href="uploadmarks.jsp"style="text-decoration:none;color:black;">Upload Marks</a></li>
              <li><a href="m_a_attendance.jsp"style="text-decoration:none;color:black;">Upload Attendance</a></li>
              <li><a href="logout.jsp"style="text-decoration:none;color:black;">Logout</a></li></ul>
         </div>
         </div> 
         </div>
         </div>
         </div> 
         </div> 
         <div id="footer">
         <br>
         Developed by <a href="http://1000projects.org/"></a> 

</body>
</html>
