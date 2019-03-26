package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<title>Shekhar's Enrollment System</title>\n");
      out.write(" <body background=\"photo/4313.jpg\">\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<link rel=\"stylesheet\" href=\"css.css\"/>\n");
      out.write(" <div id=\"course-table\">\n");
 
   String user =(String)session.getAttribute("username");
   if(user==null){

      out.write("\n");
      out.write("<form method=\"post\" action=\"LoginForm_1.jsp\">\n");
      out.write("    <div id=\"course-table\">\n");
      out.write("        <ul>\n");
      out.write("            <li class=\"active\"><a href=\"home.jsp\">Home</a></li>\n");
      out.write("               <li style=\"float:right\"><img src=\"photo/logo.png\"></li>       </ul>\n");
      out.write("        </div>\n");
      out.write("         <table Id=\"course-table\" align=\"center\">\n");
      out.write("             <br><br><br><br><br><br><br>\n");
      out.write("             <tr>\n");
      out.write("                 <td rowspan=\"4\" align=\"center\" ><img src=\"photo/login.png\"></td>\n");
      out.write("               \n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>Name:</td>\n");
      out.write("                <td><input type=\"text\" name=\"name\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Password:</td>\n");
      out.write("                <td><input type=\"password\" name=\"password\"></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td colspan=\"2\" align=\"center\" ><input type=\"submit\" value=\"LOGIN\"></td>\n");
      out.write("               \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    \n");
      out.write("</form>\n");
      out.write("\n");

  }
else{
  response.sendRedirect("DisplayMessages.jsp");
}

      out.write("\n");
      out.write(" </div>\n");
      out.write(" </body>");
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
