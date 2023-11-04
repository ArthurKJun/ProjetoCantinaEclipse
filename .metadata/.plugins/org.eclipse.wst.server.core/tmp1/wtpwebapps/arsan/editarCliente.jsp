<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="modelos.cliente"%>
<%@page import="controller.clienteController"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Cliente</title>

<link rel="stylesheet" href="./Estilos/style.css">

</head>
<body>
	
	<%
      String cod_cliente = request.getParameter("cod_cliente");
      cliente ct = clienteController.consultar(Integer.parseInt(cod_cliente));
    %>
    
    <main>
    <div class="container-geral-4">

		<h1>Alterar Clientes</h1>

		<div class="container-porta-cards-cad">



			<div class="inputs-cadastro">
    	<form action="gravarCliente.jsp?editar=yes" method="POST">
					<h3>C�digo do Cliente</h3>
					<input type="text" id="cod_cliente" name="cod_cliente"
						value="<%out.print(ct.getCod_cliente());%>">
					<h3>Nome</h3>
					<input type="text" id="nome" name="nome"
						value="<%out.print(ct.getNome());%>">
					<h3>CPF</h3>
					<input type="text" id="cpf" name="cpf" value="<%out.print(ct.getCpf());%>">
					<h3>Telefone</h3>
					<input type="text" id="fone" name="fone"
						value="<%out.print(ct.getTelefone());%>">
					<hr>
					<button>Salvar</button>
    	</form>
    	
    	</div>

		</div>

	</div>
    
    </main>
		
</body>
</html>