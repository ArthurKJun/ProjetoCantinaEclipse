<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="modelos.produto"%>
<%@page import="controller.produtoController"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Produto</title>

<link rel="stylesheet" href="./Estilos/style.css">

</head>
<body>
	
	<%
      String cod_produto = request.getParameter("cod_produto");
      produto ct = produtoController.consultar(Integer.parseInt(cod_produto));
    %>
    
    <main>
    <div class="container-geral-4">

		<h1>Alterar Produtos</h1>

		<div class="container-porta-cards-cad">

			<div class="inputs-cadastro">
    	<form action="gravarProduto.jsp?editar=yes" method="POST">
					<h3>Código do Produto</h3>
					<input type="text" id="cod_produto" name="cod_produto"
						value="<%out.print(ct.getCod_produto());%>">
					<h3>Nome</h3>
					<input type="text" id="nome" name="nome"
						value="<%out.print(ct.getNome());%>">
					<h3>Preço</h3>
					<input type="text" id="preco" name="preco" value="<%out.print(ct.getPreco());%>">
					<h3>Quantidade no Estoque</h3>
					<input type="text" id="quantidade" name="quantidade"
						value="<%out.print(ct.getQuantidade());%>">
					<hr>
					<button>Salvar</button>
    	</form>
    	
    	</div>

		</div>

	</div>
    
    </main>
		
</body>
</html>