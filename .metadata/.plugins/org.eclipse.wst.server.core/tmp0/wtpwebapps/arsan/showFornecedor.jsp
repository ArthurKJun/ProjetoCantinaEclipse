<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "controller.fornecedorController" %>	    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Fornecedores</title>

<link rel="stylesheet" href="./Estilos/style.css">

</head>
<body>

	<div class="container-lista-vendas">
		<h1>Fornecedores</h1>
		<table>
			<thead>
				<tr>
					<th>Empresa</th>
					<th>CNPJ</th>
					<th>Telefone</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<%
				ResultSet fornec = fornecedorController.consultar();
				while (fornec.next()) {
					out.print("<tr>");
					out.print("<td>" + fornec.getString("nome") + "</td>");
					out.print("<td>" + fornec.getString("cnpj") + "</td>");
					out.print("<td>" + fornec.getString("fone") + "</td>");
					out.print("<td>" + fornec.getString("email") + "</td>");
					String editar = "<td><a href='editarFornecedor.jsp?cod_fornecedor="+ fornec.getInt("cod_fornecedor") +"' style = 'color : blue; background-color : white; border-radius : 5px'>Editar</a>";
					String excluir = "<td><a href='excluirFornecedor.jsp?cod_fornecedor=" + fornec.getInt("cod_fornecedor") + "' style = 'color : red; background-color : white; border-radius : 5px'>Excluir</a>";
					out.print(editar + "" + excluir);
					out.print("<tr>");
				}
				%>
			</tbody>
		</table>

	</div>
	
</body>
</html>