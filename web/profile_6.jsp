
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
   <form method="post" action="profile_5.jsp">
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
                    <TEXTAREA NAME="question" rows="4" cols="50"></TEXTAREA>
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