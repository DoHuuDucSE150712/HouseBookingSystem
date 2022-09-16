package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ListHouse_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <nav>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">Home</a></li>\n");
      out.write("                <li><a href=\"#\">Book</a></li>\n");
      out.write("                <li><a href=\"#\">Room</a></li>\n");
      out.write("                <li><a href=\"#\">Service</a></li>\n");
      out.write("                <li><a href=\"#\">Gallery</a></li>\n");
      out.write("                <li><a href=\"#\">Review</a></li>\n");
      out.write("                <li><a href=\"#\">Contact</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("        <h1>Manage House</h1>\n");
      out.write("        <form action=\"#\" method=\"get\">\n");
      out.write("            Name : <input type=\"text\" name=\"name\" >\n");
      out.write("            <input type=\"submit\" value=\"search\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <table border = \"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>House_ID</th>\n");
      out.write("                <th>House_Name</th>\n");
      out.write("                <th>Description</th>\n");
      out.write("                <th>Price</th>\n");
      out.write("                <th>House_Img</th>\n");
      out.write("                <th>Address</th>\n");
      out.write("                <th>District</th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>1</td>\n");
      out.write("                <td>Phu Quoc</td>\n");
      out.write("                <td>Xin</td>\n");
      out.write("                <td>100</td>\n");
      out.write("                <td>1</td>\n");
      out.write("                <td>Q9</td>\n");
      out.write("                <td>Le Van viet</td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        <a href=\"#\" >Add new</a><br>\n");
      out.write("        <a href=\"#\" >Edit</a><br>\n");
      out.write("        <a href=\"#\" >Delete</a><br>\n");
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
