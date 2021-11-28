package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("\t<meta http-equiv=\"X-UA-compatible\" content = \"IE-edge\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel =\"stylesheet\" type =\"text/css\" href=\"bootstrap.min.css\">\n");
      out.write("        <script src=\"jquery-3.3.1.min\"></script>\n");
      out.write("        <script src=\"bootstrap.min.js\"></script>\n");
      out.write("        <title>Online Musical Instrument Store</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class = container style = \"margin-top: 100px\">\n");
      out.write("         <!-- Start Nagigation -->\n");
      out.write("  <nav class=\"navbar navbar-expand-sm navbar-dark pl-5 fixed-top\" style = \"background-color : #B9105E\">\n");
      out.write("    <a href=\"index.jsp\" class=\"navbar-brand\">Online Musical Instrument Store</a>\n");
      out.write("    <span class=\"navbar-text\">Cheap And Best</span>\n");
      out.write("    <button type=\"button\" class=\"navbar-toggler\" data-toggle=\"collapse\" data-target=\"#myMenu\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myMenu\">\n");
      out.write("      <ul class=\"navbar-nav pl-5 custom-nav\">\n");
      out.write("        <li class=\"nav-item\"><a href=\"index.jsp\" class=\"nav-link\">Home</a></li>\n");
      out.write("        <li class=\"nav-item\"><a href=\"login.jsp\" class=\"nav-link\">Login</a></li>\n");
      out.write("        <li class=\"nav-item\"><a href=\"team.html\" class=\"nav-link\">Team</a></li>\n");
      out.write("        <li class=\"nav-item\"><a href=\"contact.jsp\" class=\"nav-link\">Contact</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </nav> <!-- End Navigation -->\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("       <div class=\"container\">\n");
      out.write("\t\t\t<form method='post' action=\"controller.jsp\">\n");
      out.write("                             <input type=\"hidden\" name=\"page\" value=\"login\"> \n");
      out.write("\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\">\n");
      out.write("\t\t\t\t\t\t\t<center><h2>Login Form</h2></center>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>User Name</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\" class=\"text\" placeholder=\"User Name\" name=\"username\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>Password</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"password\" class=\"text\" placeholder=\"Password\" name=\"password\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    ");
 
                                                        if(request.getSession().getAttribute("userStatus")!=null){
                                                            System.out.println("its called");
                                                      if(request.getSession().getAttribute("userStatus").equals("-1")){  
                                                          System.out.println("now inside");
                                                    
      out.write("\n");
      out.write("                                                    <script>alert(\"username or password is incorrect\");</script>\n");
      out.write("                                                    <p style=\"color: rgba(255, 255, 51, 1);font-size: 17px\">username or password is incorrect</p>\n");
      out.write("                                                    <br>\n");
      out.write("                                                    ");

                                                      }
                                                        }
                                                          
      out.write("\n");
      out.write("                                                    \n");
      out.write("                                                    \n");
      out.write("                                                 <!--   <a href=\"\">Forgot Passowrd</a></td>-->\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<center>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Login\" class=\"button\">\n");
      out.write("                                                        <a href =\"signup.jsp\">Signup</a>\n");
      out.write("                                                       <!-- <input type=\"submit\" value=\"Sign Up\" class=\"button\">-->\n");
      out.write("\t\t\t\t\t\t\t</center>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div> \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
