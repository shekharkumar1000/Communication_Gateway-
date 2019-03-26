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
       String id=request.getParameter("id");
       String ir=request.getParameter("selectedStudent");
       String quer="SELECT * FROM quessolmaster where id="+ir;
      ResultSet rs = st.executeQuery(quer);
      
      
   %>
 <%--
create table quessolmaster (id integer auto_increment,student varchar(20),
course varchar(20),question varchar(1000)  ,solution varchar(1000),primary key(id));
select * from quessolmaster;
  --%>
   <form method="post" action="F&Q_1.jsp">
      <table Id="course-table" align="center">
          <%
 while(rs.next()){   
 %>
            <tr>
                <td> Id:</td>
                <td> <input type="text" value="<%=rs.getInt("id")%>" name="id" readonly</td>
            </tr>
            <tr>
                <td>Reply Answer</td>
                <td> 
                    <TEXTAREA NAME="solution" rows="4" cols="50"></TEXTAREA>
               </td>
           </tr>
      <%  }  %>        <tr>
                 <td colspan="5" align="center" ><input type="submit" value="SUBMIT"></td>
                 
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