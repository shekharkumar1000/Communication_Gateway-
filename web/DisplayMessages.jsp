
<html>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shekhar's Enrollment System</title>
        <link rel="stylesheet" href="css.css"/>
    </head>
     <body background="photo/r.bmp">
       <div id="course-table">
        <ul>
            <li class="active"><a href="DisplayMessages.jsp">Home</a></li>
           
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="profile_1.jsp">Resourses</a></li>
             <li><a href="profile_2.jsp">Ask Questions</a></li>
             <li><a href="profile_3.jsp">View Answers</a></li>
             <li style="float:right"><img src="photo/logo_1.png"></a></li>
              <li style="float:right"><a href="logout.jsp">Logout</a></li>
              <li style="float:right"><input type="button" value="Print this page" onClick="window.print()"</li>
                <a class="cta-btn" href="photo/brochure.pdf">Download Brochure</a>
                
        </ul>
            
        </div>
        <div id="course-table">
     </div>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="css.css"/>
 <div id="course-table">
<% 
 String name=(String)session.getAttribute("username");
 if(name==null){
     response.sendRedirect("logout.jsp");
%>

<%}
else{
%>
     <h3><marquee><BR>WELCOME <%=name%></marquee></h3>
      <% }
       %>
 </div>
   </body>
</html>



