<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="modelos.fornecedor"%>
<%@page import="controller.fornecedorController"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar fornecedor</title>

<link rel="stylesheet" href="./Estilos/style.css">

</head>
<body>
	
	<%
      String cod_fornecedor = request.getParameter("cod_fornecedor");
      fornecedor ct = fornecedorController.consultar(Integer.parseInt(cod_fornecedor));
    %>
    
    <main>
    <div class="container-geral-4">

		<h1>Alterar fornecedor</h1>

		<div class="container-porta-cards-cad">



			<div class="inputs-cadastro">
    	<form action="gravarFornecedor.jsp?editar=yes" method="POST">
					<h3>Código do fornecedor</h3>
					<input type="text" id="cod_fornecedor" name="cod_fornecedor"
						value="<%out.print(ct.getCod_fornecedor());%>">
					<h3>Nome</h3>
					<input type="text" id="nome" name="nome"
						value="<%out.print(ct.getNome());%>">
					<h3>CPF</h3>
					<input type="text" id="cnpj" name="cnpj" value="<%out.print(ct.getCnpj());%>">
					<h3>Telefone</h3>
					<input type="text" id="fone" name="fone"
						value="<%out.print(ct.getFone());%>">
					<h3>Email</h3>
					<input type="text" id="email" name="email"
						value="<%out.print(ct.getEmail());%>">	
					<hr>
					<button>Salvar</button>
    	</form>
    	
    	</div>

		</div>

	</div>
    
    </main>
		
</body>
</html>