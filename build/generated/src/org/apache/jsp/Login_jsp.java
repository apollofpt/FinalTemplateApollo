package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Đăng nhập</title>\n");
      out.write("\n");
      out.write("    <!-- Font Icon -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Main css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style1.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <div class=\"main\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Sing in  Form -->\n");
      out.write("        <section class=\"sign-in\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"signin-content\">\n");
      out.write("                    <div class=\"signin-image\">\n");
      out.write("                        <figure><img src=\"images/signin-image.jpg\" alt=\"sing up image\"></figure>\n");
      out.write("                        <a href=\"./RegisterServlet\" class=\"signup-image-link\">Tạo tài khoản</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"signin-form\">\n");
      out.write("                        <h2 class=\"form-title\">Login</h2>\n");
      out.write("                        <form method=\"POST\" class=\"register-form\" id=\"login-form\" action=\"LoginServlet\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"username\"><i class=\"zmdi zmdi-account material-icons-name\"></i></label>\n");
      out.write("                                <input type=\"text\" name=\"username\" id=\"username\" placeholder=\"Tên tài khoản\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"password\"><i class=\"zmdi zmdi-lock\"></i></label>\n");
      out.write("                                <input type=\"password\" name=\"password\" id=\"password\" placeholder=\"Mật khẩu\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"checkbox\" name=\"remember-me\" id=\"remember-me\" class=\"agree-term\" />\n");
      out.write("                                <label for=\"remember-me\" class=\"label-agree-term\"><span><span></span></span>Nhớ tài khoản</label>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group form-button\">\n");
      out.write("                                <input type=\"submit\" name=\"Login\" id=\"Login\" class=\"form-submit\" value=\"Đăng nhập\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"home.jsp\">Quay trở lại trang chủ</a>\n");
      out.write("                        </form>\n");
      out.write("                        <div class=\"social-login\">\n");
      out.write("                            <span class=\"social-label\">Hoặc đăng nhập bằng</span>\n");
      out.write("                            <ul class=\"socials\">\n");
      out.write("                                <li><a href=\"#\"><i class=\"display-flex-center zmdi zmdi-facebook\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"display-flex-center zmdi zmdi-twitter\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"display-flex-center zmdi zmdi-google\"></i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- JS -->\n");
      out.write("    <script src=\"DemoProject/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"DemoProject/js/main.js\"></script>\n");
      out.write("</body><!-- This templates was made by Colorlib (https://colorlib.com) -->\n");
      out.write("</html>");
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
