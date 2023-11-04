<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.ResultSet"%>
<%@ page import = "controller.clienteController" %>	    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Clientes</title>
<link rel="stylesheet" href="./Estilos/style.css">
</head>
<body>
	
	<div class="container-lista-vendas">
		<h1>Clientes</h1>
		<table>
			<thead>
				<tr>
					<th>Nome</th>
					<th>CPF</th>
					<th>Telefone</th>					
				</tr>
			</thead>
			<tbody>
				<%
				ResultSet cliente = clienteController.consultar();
				while (cliente.next()) {
					out.print("<tr>");
					out.print("<td>" + cliente.getString("nome") + "</td>");
					out.print("<td>" + cliente.getString("cpf") + "</td>");
					out.print("<td>" + cliente.getString("fone") + "</td>");
					String editar = "<td><a href='editarCliente.jsp?cod_cliente="+ cliente.getInt("cod_cliente") +"' style = 'color : blue; background-color : white; border-radius : 5px'>Editar</a>";
					String excluir = "<td><a href='excluirCliente.jsp?cod_cliente=" + cliente.getInt("cod_cliente") + "' style = 'color : red; background-color : white; border-radius : 5px'>Excluir</a>";
					out.print(editar + " " + excluir);
					out.print("<tr>");
				}
				%>
			</tbody>
		</table>

	</div>
	
</body>
</html>