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
            <li class="active"><a href="admin.jsp">Home</a></li>
            <li class="dropdown"><a href="#">Course</a>
                <div class="dropdown-content">
                <a href="viewallcourse.jsp">ViewCourse</a>
                <a href="addcourse.jsp">Add New Course</a>
                <a href="modifycourse.jsp">Modify Course</a>
                <a href="deletecourse.jsp">Delete Course</a>
                </div>
            </li>
            <li  class="dropdown"><a href="#">Students</a>
                <div class="dropdown-content">
                <a href="viewallstudent.jsp">View students</a>
                <a href="addstudent.jsp">Add New student</a>
                <a href="modifystudent.jsp">Modify student</a>
                <a href="deletestudent.jsp">Delete student</a>
                </div>
            </li>
            <li  class="dropdown"><a href="#">Enrol</a>
                <div class="dropdown-content">
                <a href="enrol.jsp">Enrol</a>
                <a href="removestudent.jsp">Remove</a>
                </div>
            </li>
            <li><a href="fee.jsp">Fees</a></li>
            <li  class="dropdown"><a href="#">F&Q</a>
                <div class="dropdown-content">
                
                <a href="f&q_1.jsp">Answering Question</a>
                <a href="f&q_3.jsp">Delete F&Q</a>
                </div>
            </li>
           <li style="float:right"><img src="photo/logo.png"></a></li>
              <li style="float:right"><a href="logout.jsp">Logout</a></li>
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
       String ir=request.getParameter("selectedStudent");
       String quer="SELECT * FROM CourseMaster where id="+ir;
      ResultSet rs = st.executeQuery(quer);
      
      
   %>
 <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
   <form method="post" action="viewallcourse.jsp">
      <table Id="course-table" align="center">
          <%
 while(rs.next()){   
 %>
            <tr>
                <td> Id:</td>
                <td> <input type="text" value="<%=rs.getInt("id")%>" name="id" readonly</td>
            </tr><tr>
                <td>Name:</td>
                <td><input type="text" value="<%=rs.getString("nam")%>" name="nam"></td>
      </tr><tr>    
          <td>Duration:</td>
                <td><input type="text" value="<%=rs.getInt("DURATION")%>" name="DURATION"></td>
      </tr><tr>
          <td>Technology:</td>
           <td><input type="text" value="<%=rs.getString("technology")%>" name="technology"></td>
      </tr><tr>
          <td>Fee:</td>
           <td><input type="text" value="<%=rs.getInt("fees")%>" name="fees"></td>
      </tr>
      <%  }  %>        <tr>
                 <td colspan="5" align="center" ><input type="submit" value="MODIFY"></td>
                 
            </tr>
            </form>
            </table>
             <br><br>
  
  <%    
  }
  catch(Exception e){out.println(e);}
%>
     </div>
  </body>
</html>