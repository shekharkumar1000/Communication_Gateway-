package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;

public final class LoginForm_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <body background=\"photo/4311.jpg\">\n");
      out.write("<!DOCTYPE html>\n");

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
       String quer="SELECT * FROM studentMaster";
      ResultSet rs = st.executeQuery(quer);
      
   
      out.write(" \n");
      out.write(" ");
      out.write("\n");
      out.write("\n");
      out.write("\n");

  String name=request.getParameter("name");
  String pwd=request.getParameter("password");
  if(name.equals("teacher")&& pwd.equals("teacher123")){
      session.setAttribute("username",name);
      response.sendRedirect("DisplayMessages_1.jsp"); 
  }
  else{
      
      out.write("\n");
      out.write("      <link rel=\"stylesheet\" href=\"css.css\"/>\n");
      out.write("      <table Id=\"course-table\" align=\"center\">\n");
      out.write("          <div id=\"course-table\">\n");
      out.write("              <H2> Incorrect username and password<a href=\"home.jsp\"><br>Try again</a></H2>\n");
      out.write("          </div>\n");
      out.write("      </table>\n");
      out.write("      ");

      while(rs.next())
       {
          
          String nam=rs.getString("name");
          String passord=rs.getString("passord");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                response.sendRedirect("DisplayMessages.jsp"); 
             }
       }

      out.write("\n");
      out.write(" </body>\n");
  
  }


      out.write("\n");
      out.write("\n");
      out.write("   ");
    
  }
  catch(Exception e){out.println(e);}

      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
