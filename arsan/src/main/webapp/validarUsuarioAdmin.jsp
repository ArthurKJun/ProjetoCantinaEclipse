<%@page import="controller.usuarioController"%>
<%@page import="modelos.Usuario"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="controller.usuarioController"%>

<%
String nome = request.getParameter("nome");
String senha = request.getParameter("senha");
int cod_perfil = 0;
boolean achou = false;
ResultSet usuarios = usuarioController.consultar();
while (usuarios.next()) {
	cod_perfil = usuarios.getInt("cod_perfil");
	if (nome.equals(usuarios.getString("nome"))) {
		if (senha.equals(usuarios.getString("senha"))){
			if (cod_perfil == 1){
				achou = true;
				response.sendRedirect("cadastroUsuario.jsp");
			}
		}
	}	
}
if (achou == false){
	response.sendRedirect("Index.jsp");
}

%>