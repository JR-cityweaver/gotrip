/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2022-02-14 09:03:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fshiro_005flacksPermission_0026_005fname;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fshiro_005flacksPermission_0026_005fname = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fshiro_005flacksPermission_0026_005fname.release();
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.release();
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
      out.write("\r\n");
      out.write("\r\n");
 String basePath=request.getContextPath(); 
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>????????????</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/reset.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/public.css\">\r\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/jquery-3.1.1.js\"></script>\r\n");
      out.write("\t<script src=\"js/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/laydate.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("\t<style type=\"text/css\"> \r\n");
      out.write("\t\t*{ margin:0px; padding:0px;} \r\n");
      out.write("\t\ta{ text-decoration:none; color:#000;} \r\n");
      out.write("\t\ta:hover,a:linked{ color:#000;} \r\n");
      out.write("\t\t#nav{ margin-left:0px; list-style:none;} \r\n");
      out.write("\t\t#nav li???#nav li ul,#nav li ul li{ list-style:none;} \r\n");
      out.write("\t\t#nav li a{ width:180px; height:30px; line-height:30px; background:#79CDCD; display:block; text-indent:10px;} \r\n");
      out.write("\t\t#nav li ul li a{ background:#eaeaea;} \r\n");
      out.write("\t\t#nav li ul li ul li a{ background:#C5C1AA;} \r\n");
      out.write("\t</style> \r\n");
      out.write("\t\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"https://cdn.goeasy.io/goeasy.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t        var goEasy = new GoEasy({\r\n");
      out.write("\t\t             appkey: 'BC-daa966db1e0c42dd90f128ab3fd272ba'\r\n");
      out.write("\t\t        \t});\r\n");
      out.write("\t\t        goEasy.subscribe({\r\n");
      out.write("\t\t            channel: 'demo_channel',\r\n");
      out.write("\t\t            onMessage: function(message){\r\n");
      out.write("\t\t                alert('?????????'+message.content);\r\n");
      out.write("\t\t            \t}\r\n");
      out.write("\t\t        \t});       \r\n");
      out.write("\t\t        //GoEasy-OTP?????????appkey???????????????????????????????????????GoEasy-Reference\r\n");
      out.write("\t\t</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"public-header-warrp\">\r\n");
      out.write("\t<div class=\"public-header\" style=\"background: #CDC9A5\">\r\n");
      out.write("\t\t<div class=\"content\">\r\n");
      out.write("\t\t\t<div class=\"public-header-logo\"><a href=\"\"><img src=\"images/logo.png\"/>?????????????????????</a></div>\r\n");
      out.write("\t\t\t<div class=\"public-header-admin fr\">\r\n");
      out.write("\t\t\t\t<p class=\"admin-name\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginManager.mName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("?????????  ?????????</p>\r\n");
      out.write("\t\t\t\t<div class=\"public-header-fun fr\">\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_shiro_005flacksPermission_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write(" \t\t\t\t\t<a href=\"quit.do\" class=\"public-header-loginout\">????????????</a>\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"clearfix\"></div>\r\n");
      out.write("<!-- ???????????? -->\r\n");
      out.write("<div class=\"public-ifame mt20\">\r\n");
      out.write("\t<div class=\"content\">\r\n");
      out.write("\t\t<!-- ??????????????? -->\r\n");
      out.write("\t\t<div class=\"public-ifame-leftnav\">\r\n");
      out.write("\t\t\t<div class=\"public-title-warrp\">\r\n");
      out.write("\t\t\t\t<div class=\"public-ifame-title \">\r\n");
      out.write("\t\t\t\t\t<a href=\"\">??????</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<ul id=\"nav\">\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"javascript:;\">??????????????????</a>\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/route/index.do?routeType=0&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/route/index.do?routeType=1&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/route/index.do?routeType=2&type=??????\" target=\"content\">??????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/route/index.do?routeType=3&type=??????\" target=\"content\">??????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/route/index.do?routeType=4&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/route/index.do?routeType=5&type=??????\" target=\"content\">??????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/route/index.do?routeType=6&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"javascript:;\">??????????????????</a>\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=0&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=1&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=2&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=3&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=4&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=5&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=6&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=7&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=8&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryByType.do?hType=9&type=????????????\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"javascript:;\">????????????</a>\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"javascript:;\">????????????</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/routeorder/index.do?orderType=?????????\" target=\"content\">?????????</a> </li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/routeorder/index.do?orderType=?????????\" target=\"content\">?????????</a> </li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/routeorder/index.do?orderType=?????????\" target=\"content\">?????????</a> </li>  \r\n");
      out.write("\t\t\t\t\t\t\t\t</ul> \r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"javascript:;\">????????????</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/hotelorder/index.do?hotelorder_type=?????????&type=?????????\" target=\"content\">?????????</a> </li> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/hotelorder/index.do?hotelorder_type=?????????&type=?????????\" target=\"content\">?????????</a> </li> \r\n");
      out.write("\t\t\t\t\t\t\t\t</ul> \r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"javascript:;\">????????????</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/insorder/index.do?pageNo=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" target=\"content\">????????????</a> </li> \r\n");
      out.write("\t\t\t\t\t\t\t\t</ul> \r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(basePath );
      out.write("/hotelorder/tailor.do?pageNo=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" target=\"content\">????????????</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"javascript:;\">????????????</a>\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"queryUser.do\" target=\"content\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t");
      if (_jspx_meth_shiro_005fhasPermission_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<a href=\"need.jsp\">???????????????</a>\r\n");
      out.write("\t\t\t\t\t<!-- <ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"need.jsp\">???????????????</a></li>\r\n");
      out.write("\t\t\t\t\t</ul> -->\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- ???????????????????????? -->\r\n");
      out.write("\t\t<div class=\"public-ifame-content\">\r\n");
      out.write("\t\t\t<iframe name=\"content\" src=\"main.jsp\" frameborder=\"0\" id=\"content\" scrolling=\"yes\" marginheight=\"0\" marginwidth=\"0\" width=\"100%\" style=\"height: 700px;\"></iframe>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"js/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"> \r\n");
      out.write("\t$(function () { \r\n");
      out.write("\t\t$(\"#nav ul\").hide(); \r\n");
      out.write("\t\t\t//????????????????????? \r\n");
      out.write("\t\t\t$(\"#nav li a:first-child\").click(function () { \r\n");
      out.write("\t\t\t$(this).siblings().toggle(); \r\n");
      out.write("\t\t\t}); \r\n");
      out.write("\t\t\t//????????????????????? \r\n");
      out.write("\t\t\t$(\"#nav li ul a:first-child\").click(function () { \r\n");
      out.write("\t\t\t$(this).siblings().find(\"ul\").toggle(); \r\n");
      out.write("\t\t}); \r\n");
      out.write("\t}); \r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_shiro_005flacksPermission_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:lacksPermission
    org.apache.shiro.web.tags.LacksPermissionTag _jspx_th_shiro_005flacksPermission_005f0 = (org.apache.shiro.web.tags.LacksPermissionTag) _005fjspx_005ftagPool_005fshiro_005flacksPermission_0026_005fname.get(org.apache.shiro.web.tags.LacksPermissionTag.class);
    _jspx_th_shiro_005flacksPermission_005f0.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005flacksPermission_005f0.setParent(null);
    // /index.jsp(51,5) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005flacksPermission_005f0.setName("???????????????");
    int _jspx_eval_shiro_005flacksPermission_005f0 = _jspx_th_shiro_005flacksPermission_005f0.doStartTag();
    if (_jspx_eval_shiro_005flacksPermission_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t\t\t<a href=\"\" class=\"public-header-man\">??????</a>\r\n");
        out.write("\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_shiro_005flacksPermission_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005flacksPermission_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005flacksPermission_0026_005fname.reuse(_jspx_th_shiro_005flacksPermission_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005flacksPermission_0026_005fname.reuse(_jspx_th_shiro_005flacksPermission_005f0);
    return false;
  }

  private boolean _jspx_meth_shiro_005fhasPermission_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:hasPermission
    org.apache.shiro.web.tags.HasPermissionTag _jspx_th_shiro_005fhasPermission_005f0 = (org.apache.shiro.web.tags.HasPermissionTag) _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.get(org.apache.shiro.web.tags.HasPermissionTag.class);
    _jspx_th_shiro_005fhasPermission_005f0.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005fhasPermission_005f0.setParent(null);
    // /index.jsp(133,4) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasPermission_005f0.setName("???????????????");
    int _jspx_eval_shiro_005fhasPermission_005f0 = _jspx_th_shiro_005fhasPermission_005f0.doStartTag();
    if (_jspx_eval_shiro_005fhasPermission_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t<li>\r\n");
        out.write("\t\t\t\t\t<a href=\"javascript:;\">???????????????</a>\r\n");
        out.write("\t\t\t\t\t\r\n");
        out.write("\t\t\t\t\t\t<ul>\r\n");
        out.write("\t\t\t\t\t\t\t<li><a href=\"queryManager.do\" target=\"content\">???????????????</a></li>\r\n");
        out.write("\t\t\t\t\t\t</ul>\r\n");
        out.write("\t\t\t\t\t\r\n");
        out.write("\t\t\t\t</li>\r\n");
        out.write("\t\t\t\t");
        int evalDoAfterBody = _jspx_th_shiro_005fhasPermission_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005fhasPermission_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f0);
    return false;
  }
}
