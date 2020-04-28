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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<title>Login</title>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"images/icons/favicon.ico\"/>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Berkshire+Swash|Chelsea+Market|Delius+Swash+Caps|Indie+Flower|Lily+Script+One|Lobster|Megrim|Mystery+Quest|Playball|Shadows+Into+Light\" rel=\"stylesheet\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/login.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Playball\" rel=\"stylesheet\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"limiter\">\n");
      out.write("\t\t<div class=\"container-login100\">\n");
      out.write("\t\t\t<div class=\"wrap-login100\">\n");
      out.write("                            <span class=\"login101-form-title\">\n");
      out.write("\t\t\t\t\t\tHANDIAZZA\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("                            &nbsp;&nbsp;\n");
      out.write("\t\t\t\t<div class=\"login100-pic js-tilt\" data-tilt>\n");
      out.write("\t\t\t\t\t<img src=\"images/img-01.png\" alt=\"IMG\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                \n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\" method =\"post\" action=\"loginvalidate.jsp\">\n");
      out.write("\t\t\t\t         \t\n");
      out.write("                                    <span class=\"login100-form-title\">\n");
      out.write("\t\t\t\t\t\tMember Login\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("                                    \n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Field cannot be empty\">\n");
      out.write("                                            <input class=\"input100\" type=\"text\" name=\"uname\" id=\"usn\" required placeholder=\"Username\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"cannot be empty\" id=\"pw\">\n");
      out.write("                                            <input class=\"input100\" type=\"password\" name=\"passwd\" id=\"pwd\" required placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\n");
      out.write("                                            <button class=\"login100-form-btn\">\n");
      out.write("\t\t\t\t\t\t\tLogin\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"text-center p-t-30\">\n");
      out.write("\t\t\t\t\t\t<div class=\"dropdown\" >\n");
      out.write("                            <p class=\"txt2\">\n");
      out.write("                                Create An Account &nbsp;\n");
      out.write("                                <i class=\"fa fa-chevron-circle-down\" aria-hidden=\"true\"> </i>\n");
      out.write("                                    <a class=\"dropdown-content\" href=\"acc_student.jsp\">Student</a>\n");
      out.write("                                    <a class=\"dropdown-content\" href=\"acc_fac.jsp\">Faculty</a>\n");
      out.write("                                    <a class=\"dropdown-content\" href=\"acc_rec.jsp\">Recruiter</a>\n");
      out.write("                               \n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("    <!--===============================================================================================-->\t\n");
      out.write("\t<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/bootstrap/js/popper.js\"></script>\n");
      out.write("\t<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/select2/select2.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/tilt/tilt.jquery.min.js\"></script>\n");
      out.write("\t<script >\n");
      out.write("\t\t$('.js-tilt').tilt({\n");
      out.write("\t\t\tscale: 1.1\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"js/main.js\"></script>\n");
      out.write("</body>\n");
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
