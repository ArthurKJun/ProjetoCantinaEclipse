<%@page import="controller.usuarioController"%>
<%@page import="modelos.Usuario"%>
<%
int cod_usuario = 0;
String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String email = request.getParameter("email");
int cod_perfil =  Integer.parseInt(request.getParameter("cod_perfil"));
String senha = request.getParameter("senha");

String editar = request.getParameter("editar");
if (editar.equals("yes")) {
	cod_usuario = Integer.parseInt(request.getParameter("cod_usuario"));
}
//model Contato
Usuario ct = new Usuario(cod_usuario, nome, cpf, email, cod_perfil, senha);

//controler
if (usuarioController.salvar(ct)) {
	response.sendRedirect("Index.jsp");

}
%>