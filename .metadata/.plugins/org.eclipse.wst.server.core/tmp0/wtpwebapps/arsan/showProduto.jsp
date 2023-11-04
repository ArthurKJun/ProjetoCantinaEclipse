<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "controller.produtoController" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Produtos</title>

<link rel="stylesheet" href="./Estilos/style.css">
</head>
<body>
	<div class="container-lista-vendas">
		<h1>Produtos no Estoque</h1>
		<table>
			<thead>
				<tr>
					<th>Produto</th>
					<th>Preço</th>
					<th>Quantidade</th>
					
				</tr>
			</thead>
			<tbody>
				<%
				ResultSet produtos = produtoController.consultar();
				while (produtos.next()) {
					out.print("<tr>");
					out.print("<td>" + produtos.getString("nome") + "</td>");
					out.print("<td>" + produtos.getString("preco") + "</td>");
					out.print("<td>" + produtos.getInt("quantidade") + "</td>");
					String editar = "<td><a href='editarProduto.jsp?cod_produto="+ produtos.getInt("cod_produto") +"' style = 'color : blue; background-color : white; border-radius : 5px'>Editar</a>";
					String excluir = "<td><a href='excluirProduto.jsp?cod_produto=" + produtos.getInt("cod_produto") + "' style = 'color : red; background-color : white; border-radius : 5px'>Excluir</a>";
					out.print(editar + "" + excluir);
					out.print("<tr>");
				}
				%>
			</tbody>
		</table>

	</div>
</body>
</html>