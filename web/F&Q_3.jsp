
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
            <li  class="dropdown"><a href="#">A&Q</a>
                <div class="dropdown-content">
                
                <a href="F&Q_1.jsp">Answering Questions</a>
                <a href="F&Q_3.jsp">Delete A&Q</a>
                </div>
            </li>
           <li style="float:right"><img src="photo/logo.png"></a></li>
              <li style="float:right"><a href="logout.jsp">Logout</a></li>
              
        </ul>
        </div>
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
      String id=request.getParameter("id");
       String solution=request.getParameter("solution");
       String qq="Update quessolmaster set solution='"+solution+"' where id="+id+" ;";
        int resu = st.executeUpdate(qq);
       String quer="select * from quessolmaster;";
      ResultSet rs = st.executeQuery(quer);
      
   %>  
  <%--
create table quessolmaster (id integer auto_increment,student varchar(20),
course varchar(20),question varchar(1000)  ,solution varchar(1000),primary key(id));
select * from quessolmaster;
  --%>
  <form method="post" action="F&Q_4.jsp">
      <table Id="course-table" align="center">
          <tr>
                <td>NAME OF STUDENT</td>
                <td>NAME OF COURSE</td>
                <td>QUESTION</td>
                <td>SOLUTION</td>
                <td>Select</td>
            </tr>
         <%
 while(rs.next()){   
 %>
            <tr>
                <td><%=rs.getString("student")%></td>
                <td><%=rs.getString("course")%></td>
               
                <td><TEXTAREA NAME="Question" rows="4" cols="50" readonly="1">
                <%=rs.getString("question")%>      
              </TEXTAREA></td>
              <td><TEXTAREA NAME="Solution" rows="4" cols="50" readonly="1">
                <%=rs.getString("Solution")%>      
              </TEXTAREA></td>
               <td><input type="radio" name="selectedStudent" value="<%=rs.getInt("id")%>"</td>
            </tr>
            
            <%  }  %>
              <tr>
                 <td colspan="6" align="center" ><input type="submit" value="DELETE"></td>
                 
            </tr>
</table>
  <%    
  }
  catch(Exception e){out.println(e);}
%>

    </body>
</html>