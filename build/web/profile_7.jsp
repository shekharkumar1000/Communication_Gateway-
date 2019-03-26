
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
      String id=request.getParameter("id");
       String question=request.getParameter("question");
       String qq="Update quessolmaster set question='"+question+"' where id="+id+" ;";
        int resu = st.executeUpdate(qq);
       String quer="select * from quessolmaster where student='"+name+"';";
      ResultSet rs = st.executeQuery(quer);
      
   %>  
  <%--
create table quessolmaster (id integer auto_increment,student varchar(20),
course varchar(20),question varchar(1000)  ,solution varchar(1000),primary key(id));
select * from quessolmaster;
  --%>
  <form method="post" action="profile_8.jsp">
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
              <td><TEXTAREA NAME="solution" rows="4" cols="50" readonly="1">
                <%=rs.getString("solution")%>      
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