/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.11
 * Generated at: 2021-12-31 11:16:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class muni_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

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
      out.write("    ");
 request.setCharacterEncoding("UTF-8"); 
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Introduce</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#FFFF77\" style=\"leftmargin= 0px; topmargin= 0px; marginwidth= 0px; marginheight= 0px;\">\r\n");
      out.write("<!-- Save for Web Slices (template_sliced.psd) -->\r\n");
      out.write("<div id=\"main\">\r\n");
      out.write("  <table style=\"width= 901px; height= 1001px;\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" id=\"Table_01\">\r\n");
      out.write("    <tr>\r\n");
      out.write("\t      <td>\r\n");
      out.write("\t\t      <img src=\"images/spacer.gif\" width=\"1\" height=\"37\" alt=\"\" /></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td rowspan=\"3\">\r\n");
      out.write("        <img src=\"images/index_02.jpg\" width=\"34\" height=\"141\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"2\" rowspan=\"3\">\r\n");
      out.write("        <div id=\"logo\"><br/><a href=\"index.html\">나무야<br><br>미안해</a><br/>\r\n");
      out.write("      </div></td>\r\n");
      out.write("\t    <td colspan=\"17\"><img src=\"images/index_04.jpg\" width=\"655\" height=\"96\" alt=\"\" /></td>\r\n");
      out.write("\t    <td>\r\n");
      out.write("\t        <img src=\"images/spacer.gif\" width=\"1\" height=\"96\" alt=\"\" /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td colspan=\"2\" rowspan=\"2\">\r\n");
      out.write("        <img src=\"images/index_05.jpg\" width=\"61\" height=\"45\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"2\"><div class=\"top_menu\">\r\n");
      out.write("        <ul>\r\n");
      out.write("        <li><a href=\"index.html\">Home</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        </div></td>\r\n");
      out.write("\t    <td rowspan=\"2\">\r\n");
      out.write("\t        <img src=\"images/index_07.jpg\" width=\"1\" height=\"45\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"2\">\r\n");
      out.write("\t        <div class=\"top_menu\">\r\n");
      out.write("        <ul>\r\n");
      out.write("        <li><a href=\"intro.html\">Introduce </a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        </div></td>\r\n");
      out.write("\t    <td rowspan=\"2\">\r\n");
      out.write("\t        <img src=\"images/index_09.jpg\" width=\"1\" height=\"45\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"3\">\r\n");
      out.write("\t        <div class=\"top_menu\">\r\n");
      out.write("        <ul>\r\n");
      out.write("        <li><a href=\"Buylist.jsp\">Purchase</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        </div></td>\r\n");
      out.write("\t    <td rowspan=\"2\">\r\n");
      out.write("\t        <img src=\"images/index_11.jpg\" width=\"1\" height=\"45\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"2\">\r\n");
      out.write("\t        <div class=\"top_menu\">\r\n");
      out.write("        <ul>\r\n");
      out.write("        <li><a href=\"muni.jsp\">FAQ</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        </div></td>\r\n");
      out.write("\t    <td rowspan=\"2\">\r\n");
      out.write("\t        <img src=\"images/index_13.jpg\" width=\"1\" height=\"45\" alt=\"\" /></td>\r\n");
      out.write("\t    <td>\r\n");
      out.write("\t        <div class=\"top_menu\">\r\n");
      out.write("        <ul>\r\n");
      out.write("        <li><a href=\"notice.jsp\">Notice</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        </div></td>\r\n");
      out.write("\t    <td rowspan=\"2\">\r\n");
      out.write("\t        <img src=\"images/index_15.jpg\" width=\"25\" height=\"45\" alt=\"\" /></td>\r\n");
      out.write("\t    <td>\r\n");
      out.write("\t        <img src=\"images/spacer.gif\" width=\"1\" height=\"42\" alt=\"\" /></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td colspan=\"2\">\r\n");
      out.write("        <img src=\"images/index_16.jpg\" width=\"113\" height=\"3\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"2\">\r\n");
      out.write("\t        <img src=\"images/index_17.jpg\" width=\"113\" height=\"3\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"3\">\r\n");
      out.write("\t        <img src=\"images/index_18.jpg\" width=\"113\" height=\"3\" alt=\"\" /></td>\r\n");
      out.write("\t    <td colspan=\"2\">\r\n");
      out.write("\t        <img src=\"images/index_19.jpg\" width=\"113\" height=\"3\" alt=\"\" /></td>\r\n");
      out.write("\t    <td>\r\n");
      out.write("\t        <img src=\"images/index_20.jpg\" width=\"113\" height=\"3\" alt=\"\" /></td>\r\n");
      out.write("\t    <td>\r\n");
      out.write("\t        <img src=\"images/spacer.gif\" width=\"1\" height=\"3\" alt=\"\" /></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      </div>\r\n");
      out.write("      <br><br><br>\r\n");
      out.write("      <form name=\"form1\" method=\"post\" action=\"boardBlist.jsp\">\r\n");
      out.write("<table border=1 width=600>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width = \"7%\">번호</td>\r\n");
      out.write("<td width = \"10%\">닉넴</td>\r\n");
      out.write("<td width = \"*%\">이메일</td>\r\n");
      out.write("<td width = \"5%\">폰번</td>\r\n");
      out.write("<td width = \"5%\">폰번2</td>\r\n");
      out.write("<td width = \"5%\">폰번3</td>\r\n");
      out.write("<td width = \"17%\">분류</td>\r\n");
      out.write("</tr>\r\n");
 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String conURL = "jdbc:sqlserver://localhost:1433;databaseName=JSP1;user=JSP;password=1234";
Connection con= DriverManager.getConnection(conURL);
ResultSet rs1=null,rs2=null;
Statement stmt = null;
try{ 
stmt=con.createStatement();
String sql = " select count(*) from muni "; 
rs2 = stmt.executeQuery(sql);
rs2.next();
if (rs2.getInt(1)==0) {

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td colspan=5 > 등록된 공지사항이 없습니다</td>\r\n");
      out.write("</tr>\r\n");
 }else {
	sql="select num, nick, ema, phone, phone2, phone3, fireman from muni order by num desc";
	rs1 = stmt.executeQuery(sql);
	while (rs1.next()) {
		int num=rs1.getInt("num");
		String nick = rs1.getString("nick");
		String ema = rs1.getString("ema");
		String phone = rs1.getString("phone");
		String phone2 = rs1.getString("phone2");
		String phone3 = rs1.getString("phone3");
		String fireman = rs1.getString("fireman");


	
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"muniview.jsp?num=");
      out.print(num );
      out.write("\">\r\n");
      out.write("\t");
      out.print(num );
      out.write("</a></td><td>");
      out.print(nick );
      out.write("</td><td>");
      out.print(ema );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(phone );
      out.write("</td><td>");
      out.print(phone2 );
      out.write("</td><td>");
      out.print(phone3 );
      out.write("</td><td>");
      out.print(fireman );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");

	}}}
catch(SQLException e) {
	out.print(e.getMessage());
}finally{
	if (stmt != null) stmt.close();
	if (rs1 != null) rs1.close();
	if (rs2 != null) rs2.close();
	if (con != null) con.close();
}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<br><br>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
