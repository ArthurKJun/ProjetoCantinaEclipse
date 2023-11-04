<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./Estilos/style.css">

<title>Cadastro de Cliente</title>

</head>
<body>

	<div class="container-geral-4">

		<h1>Cadastro de Clientes</h1>

		<div class="container-porta-cards-cad">



			<div class="inputs-cadastro">

				<form action="gravarCliente.jsp?editar=no" method="POST">
					<h3>Nome</h3>
					<input type="text" id="nome" name="nome"
						placeholder="Informe o nome">
					<h3>CPF</h3>
					<input type="text" id="cpf" name="cpf" placeholder="Informe o CPF">
					<h3>Telefone</h3>
					<input type="text" id="fone" name="fone"
						placeholder="Informe o telefone">
					<hr>
					<button onclick="Validar()">Salvar</button>

				</form>
				<hr>
				<input
						style="padding: 0.5rem; margin: 1rem; font-size: large; background-color: #9ca5af; border: none; border-radius: 10px;"						
						type="button"
						onclick="document.location.href='<%="showCliente.jsp"%>'"
						value="Mostrar">
				
				<hr>				

			</div>

		</div>

	</div>

	<script>
    
    function validar(){
    	event.preventDefault();
    	
    	let nome = document.getElementById('nome')
    	if(nome.value == ''){
    		alert('Informe nome')
    		nome.focus()
    		return
    	}
    	
    	let cpf = document.getElementById('cpf')
    	if(cpf.value == ''){
    		alert('Informe cpf')
    		cpf.focus()
    		return
    	}
    	
    	let  fone = document.getElementById('fone')
    	if(fone.value == ''){
    		alert('Informe fone')
    		fone.focus()
    		return
    	}
    	
    	document.getElementsByTagName('form')[0].submit()
    }
    
    </script>

</body>
</html>