
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
            <li  class="dropdown"><a href="#">Ask Questions</a>
                <div class="dropdown-content">
                <a href="profile_2.jsp">Ask Questions</a>
                <a href="profile_5.jsp">Modify Questions</a>
                <a href="profile_7.jsp">Delete Questions</a>
                
                </div>
            </li>
             <li><a href="profile_4.jsp">View Answers</a></li>
             <li style="float:right"><img src="photo/logo.png"></a></li>
              <li style="float:right"><a href="logout.jsp">Logout</a></li>
              <li style="float:right"><input type="button" value="Print this page" onClick="window.print()"</li>
                <a class="cta-btn" href="photo/brochure.pdf">Download Brochure</a>
        </ul>
            
        </div>
        <div id="course-table">
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  Connection conn = null;
  String url="jdbc:mysql://localhost:3306/";
  String dbName ="database2";
  String  driver="com.mysql.jdbc.Driver";
  String userName="root";
  String password="";
  Statement st;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
      String name=(String)session.getAttribute("username");
       String quer="select name,nam,eid,fees,studentid,amount,courseid from studentMaster Inner join CoursesEnrolled on CoursesEnrolled.studentid=studentMaster.id Inner join CourseMaster on CoursesEnrolled.courseid=CourseMaster.id Inner join feepaid on feepaid.id=CoursesEnrolled.eid where name='"+name+"';";
      ResultSet rs = st.executeQuery(quer);
      
   %>  
  <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
   <form method="post" action="fee_2.jsp">
      
      <table Id="course-table" align="center">
         
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/hrbXwZFyDlY"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/dB6vJbPixj0"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
          <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/lX4G_5hT8kQ"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/iUqHJmQmJOo"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
          <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
           <tr>
                 <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/Skr3xxScVZA"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
                <td><iframe width="420" height="315"  src="https://www.youtube.com/embed/-2SrtZU6BnI"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe></td>
          </tr>
          
          
           
           
            </table>
             <br><br>
  </form>
  <%    
  }
  catch(Exception e){out.println(e);}
%>
     </div>
  </body>
</html>