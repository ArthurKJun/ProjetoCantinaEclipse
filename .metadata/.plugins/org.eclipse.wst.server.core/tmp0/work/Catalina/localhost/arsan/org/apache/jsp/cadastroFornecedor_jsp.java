/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.27
 * Generated at: 2023-11-03 04:15:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class cadastroFornecedor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
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

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
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

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"./Estilos/style.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<title>Cadastro de Fornecedor</title>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"container-geral-4\">\r\n");
      out.write("\r\n");
      out.write("		<h1>Cadastro de Fornecedore</h1>\r\n");
      out.write("\r\n");
      out.write("		<div class=\"container-porta-cards-cad-fornecedor\">\r\n");
      out.write("\r\n");
      out.write("			<div class=\"inputs-cadastro-for\">\r\n");
      out.write("\r\n");
      out.write("				<form action=\"gravarFornecedor.jsp?editar=no\" method=\"POST\">\r\n");
      out.write("\r\n");
      out.write("					<h3>Empresa</h3>\r\n");
      out.write("					<input type=\"text\" id=\"nome\" name=\"nome\"\r\n");
      out.write("						placeholder=\"Informe o Nome\">\r\n");
      out.write("					<h3>CNPJ</h3>\r\n");
      out.write("					<input type=\"text\" id=\"cnpj\" name=\"cnpj\"\r\n");
      out.write("						placeholder=\"Informe o CNPJ\">\r\n");
      out.write("					<h3>Telefone</h3>\r\n");
      out.write("					<input type=\"text\" id=\"fone\" name=\"fone\"\r\n");
      out.write("						placeholder=\"Informe o telefone\">\r\n");
      out.write("					<h3>Email</h3>\r\n");
      out.write("					<input type=\"text\" id=\"email\" name=\"email\"\r\n");
      out.write("						placeholder=\"Informe o E-mail\">\r\n");
      out.write("					<hr>\r\n");
      out.write("					<button onclick=\"Validar()\">Salvar</button>\r\n");
      out.write("\r\n");
      out.write("				</form>	\r\n");
      out.write("				\r\n");
      out.write("				<hr>			\r\n");
      out.write("					<input\r\n");
      out.write("						style=\"padding: 0.5rem; margin: 1rem; font-size: large; background-color: #9ca5af; border: none; border-radius: 10px;\"						\r\n");
      out.write("						type=\"button\"\r\n");
      out.write("						onclick=\"document.location.href='");
      out.print("showFornecedor.jsp");
      out.write("'\"\r\n");
      out.write("						value=\"Mostrar\">\r\n");
      out.write("				<hr>		\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("	<script>\r\n");
      out.write("    \r\n");
      out.write("    function validar(){\r\n");
      out.write("    	event.preventDefault();\r\n");
      out.write("    	\r\n");
      out.write("    	let nome = document.getElementById('nome')\r\n");
      out.write("    	if(nome.value == ''){\r\n");
      out.write("    		alert('Informe nome')\r\n");
      out.write("    		nome.focus()\r\n");
      out.write("    		return\r\n");
      out.write("    	}\r\n");
      out.write("    	\r\n");
      out.write("    	let cnpj = document.getElementById('cnpj')\r\n");
      out.write("    	if(cnpj.value == ''){\r\n");
      out.write("    		alert('Informe cnpj')\r\n");
      out.write("    		cnpj.focus()\r\n");
      out.write("    		return\r\n");
      out.write("    	}\r\n");
      out.write("    	\r\n");
      out.write("    	let  fone = document.getElementById('fone')\r\n");
      out.write("    	if(fone.value == ''){\r\n");
      out.write("    		alert('Informe fone')\r\n");
      out.write("    		fone.focus()\r\n");
      out.write("    		return\r\n");
      out.write("    	}\r\n");
      out.write("    	\r\n");
      out.write("    	let  email = document.getElementById('email')\r\n");
      out.write("    	if(email.value == ''){\r\n");
      out.write("    		alert('Informe email')\r\n");
      out.write("    		email.focus()\r\n");
      out.write("    		return\r\n");
      out.write("    	}\r\n");
      out.write("    	\r\n");
      out.write("    	document.getElementsByTagName('form')[0].submit()\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    function(){\r\n");
      out.write("    	location.href = showFornecedor.jsp;\r\n");
      out.write("    }\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
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
