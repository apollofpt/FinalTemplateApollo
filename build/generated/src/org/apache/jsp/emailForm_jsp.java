package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class emailForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <title>Welcome to DuniExchange</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            @media screen {\n");
      out.write("                @font-face {\n");
      out.write("                    font-family: 'Lato';\n");
      out.write("                    font-style: normal;\n");
      out.write("                    font-weight: 400;\n");
      out.write("                    src: local('Lato Regular'), local('Lato-Regular'), url(https://fonts.gstatic.com/s/lato/v11/qIIYRU-oROkIk8vfvxw6QvesZW2xOQ-xsNqO47m55DA.woff) format('woff');\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                @font-face {\n");
      out.write("                    font-family: 'Lato';\n");
      out.write("                    font-style: normal;\n");
      out.write("                    font-weight: 700;\n");
      out.write("                    src: local('Lato Bold'), local('Lato-Bold'), url(https://fonts.gstatic.com/s/lato/v11/qdgUG4U09HnJwhYI-uK18wLUuEpTyoUstqEm5AMlJo4.woff) format('woff');\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                @font-face {\n");
      out.write("                    font-family: 'Lato';\n");
      out.write("                    font-style: italic;\n");
      out.write("                    font-weight: 400;\n");
      out.write("                    src: local('Lato Italic'), local('Lato-Italic'), url(https://fonts.gstatic.com/s/lato/v11/RYyZNoeFgb0l7W3Vu1aSWOvvDin1pK8aKteLpeZ5c0A.woff) format('woff');\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                @font-face {\n");
      out.write("                    font-family: 'Lato';\n");
      out.write("                    font-style: italic;\n");
      out.write("                    font-weight: 700;\n");
      out.write("                    src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://fonts.gstatic.com/s/lato/v11/HkF_qI1x_noxlxhrhMQYELO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* CLIENT-SPECIFIC STYLES */\n");
      out.write("            body,\n");
      out.write("            table,\n");
      out.write("            td,\n");
      out.write("            a {\n");
      out.write("                -webkit-text-size-adjust: 100%;\n");
      out.write("                -ms-text-size-adjust: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            table,\n");
      out.write("            td {\n");
      out.write("                mso-table-lspace: 0pt;\n");
      out.write("                mso-table-rspace: 0pt;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            img {\n");
      out.write("                -ms-interpolation-mode: bicubic;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* RESET STYLES */\n");
      out.write("            img {\n");
      out.write("                border: 0;\n");
      out.write("                height: auto;\n");
      out.write("                line-height: 100%;\n");
      out.write("                outline: none;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            table {\n");
      out.write("                border-collapse: collapse !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                height: 100% !important;\n");
      out.write("                margin: 0 !important;\n");
      out.write("                padding: 0 !important;\n");
      out.write("                width: 100% !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* iOS BLUE LINKS */\n");
      out.write("            a[x-apple-data-detectors] {\n");
      out.write("                color: inherit !important;\n");
      out.write("                text-decoration: none !important;\n");
      out.write("                font-size: inherit !important;\n");
      out.write("                font-family: inherit !important;\n");
      out.write("                font-weight: inherit !important;\n");
      out.write("                line-height: inherit !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* MOBILE STYLES */\n");
      out.write("            @media screen and (max-width:600px) {\n");
      out.write("                h1 {\n");
      out.write("                    font-size: 32px !important;\n");
      out.write("                    line-height: 32px !important;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* ANDROID CENTER FIX */\n");
      out.write("            div[style*=\"margin: 16px 0;\"] {\n");
      out.write("                margin: 0 !important;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body style=\"background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;\">\n");
      out.write("        <!-- HIDDEN PREHEADER TEXT -->\n");
      out.write("        <div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: 'Lato', Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\"> We're thrilled to have you here! Get ready to dive into your new account. </div>\n");
      out.write("        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n");
      out.write("            <!-- LOGO -->\n");
      out.write("            <tr>\n");
      out.write("                <td bgcolor=\"#FFA73B\" align=\"center\">\n");
      out.write("                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\"> </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\n");
      out.write("                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;\">\n");
      out.write("                                <h1 style=\"font-size: 48px; font-weight: 400; margin: 2;\">Chào mừng đến với DuniExchange!</h1> <img src=\" https://img.icons8.com/clouds/100/000000/handshake.png\" width=\"125\" height=\"120\" style=\"display: block; border: 0px;\" />\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\n");
      out.write("                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\n");
      out.write("                                <p style=\"margin: 0;\">Rất vui khi được gặp bạn tại dự án của Team Apollo. Đầu tiên, hãy điền email của bạn vào ô bên dưới nhé</p>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td bgcolor=\"#ffffff\" align=\"left\">\n");
      out.write("                                <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">\n");
      out.write("                                            <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                                                <form action=\"validateEmail\">\n");
      out.write("                                                            <input type=\"email\" name=\"emailA\"  style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: black; text-decoration: none; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\"/>\n");
      out.write("                                                            <br><br><input type=\"submit\" name=\"Confirm\" bgcolor=\"#FFA73B\" style=\"background-color:#FFA73B; font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: black; text-decoration: none; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\"/>\n");
      out.write("                                                </form>                                                       \n");
      out.write("                                                 \n");
      out.write("                                        </td>\n");
      out.write("<!--                                    <tr>\n");
      out.write("                                        <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#FFA73B\"><a href=\"#\" style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\">Confirm Account</a></td>\n");
      out.write("                                    </tr>-->\n");
      out.write("                                </table>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr> <!-- COPY -->\n");
      out.write("            <tr>\n");
      out.write("                <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\n");
      out.write("                    <p style=\"margin: 0;\">Một đoạn mã 6 kí tự sẽ được gửi về mail của bạn, hãy kiểm tra email của bạn.</p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 0px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\n");
      out.write("                    <p style=\"margin: 0;\">Cheers,<br>BBB Team</p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">\n");
      out.write("        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n");
      out.write("            <tr>\n");
      out.write("                <td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\n");
      out.write("                    <h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">Need more help?</h2>\n");
      out.write("                    <p style=\"margin: 0;\"><a href=\"#\" target=\"_blank\" style=\"color: #FFA73B;\">We&rsquo;re here to help you out</a></p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\n");
      out.write("        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\n");
      out.write("            <tr>\n");
      out.write("                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\"> <br>\n");
      out.write("                    <p style=\"margin: 0;\">If these emails get annoying, please feel free to <a href=\"#\" target=\"_blank\" style=\"color: #111111; font-weight: 700;\">unsubscribe</a>.</p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("\n");
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
