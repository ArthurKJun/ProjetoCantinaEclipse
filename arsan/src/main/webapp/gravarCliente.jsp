<%@page import="controller.clienteController"%>
<%@page import="modelos.cliente"%>
<%
int cod_cliente = 0;
String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String fone = request.getParameter("fone");

String editar = request.getParameter("editar");
if (editar.equals("yes")) {
	cod_cliente = Integer.parseInt(request.getParameter("cod_cliente"));
}
//model Contato
cliente ct = new cliente(cod_cliente, nome, cpf, fone);

//controler
if (clienteController.salvar(ct)) {
	response.sendRedirect("showCliente.jsp");

}
%>