/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2022-02-14 09:03:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\t\r\n");
      out.write("\t<title>???????????????</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/reset.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/login.css\" />\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("    function refresh(obj) {\r\n");
      out.write("        obj.src = \"image.do?\"+Math.random();\r\n");
      out.write("    }\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"page\">\r\n");
      out.write("\t\t<div class=\"loginwarrp\">\r\n");
      out.write("\t\t\t<div class=\"logo\">???????????????</div>\r\n");
      out.write("        \t\t<div class=\"login_form\">\r\n");
      out.write("\t\t\t\t\t<form name=\"form\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"login-item\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>????????????</span>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"username\" type=\"text\" name=\"username\" class=\"login_input\">\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"login-item\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>????????????</span>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"password\" type=\"password\" name=\"password\" class=\"login_input\">\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"login-item verify\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>????????????</span>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"code\" type=\"text\" name=\"CheckCode\" class=\"login_input verify_input\">\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<img title=\"????????????\" onclick=\"javascript:refresh(this);\" src=\"image.do\" border=\"0\" class=\"verifyimg\" />\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"login-sub\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"button\" value=\"??????\" onclick=\"checkCode()\"/>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t                      \r\n");
      out.write("\t\t           \t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery-3.1.1.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tvar code=$(\"#code\").val();\r\n");
      out.write("\t\tfunction checkCode(){\r\n");
      out.write("\t\t\tvar code = $(\"#code\").val();\r\n");
      out.write("\t\t\t//??????1???URL??????\r\n");
      out.write("\t\t\t//??????2???????????????????????????????????????\r\n");
      out.write("\t\t\t$.get(\"checkCode.do?code=\"+code,function(data,status){\r\n");
      out.write("\t\t\t\t\t//??????data??????success???????????????\r\n");
      out.write("\t\t\t\t\tif (\"success\" == data){\r\n");
      out.write("\t\t\t\t\t\t\tvar username = $(\"#username\").val();\r\n");
      out.write("\t\t\t\t\t\t\tvar password = $(\"#password\").val();\r\n");
      out.write("\t\t\t\t\t\t\t$.post(\"login.do\",//URL\r\n");
      out.write("\t\t\t\t\t\t\t\t{ \r\n");
      out.write("\t\t\t\t\t\t\t\t\tusername:username,\r\n");
      out.write("\t\t\t\t\t\t\t \t\tpassword:password\r\n");
      out.write("\t\t\t\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\t\t\tfunction(data1,status){\r\n");
      out.write("\t\t\t\t\t\t\t\t\t//??????data??????success???????????????\r\n");
      out.write("\t\t\t\t\t\t\t\t\tif (\"success\" == data1){\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tdocument.form.action=\"index.jsp\";\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tdocument.form.submit();\r\n");
      out.write("\t\t\t\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talert(\"????????????????????????\")\r\n");
      out.write("\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\t\t);\r\n");
      out.write("\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\talert(\"???????????????\")\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
