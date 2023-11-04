<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./Estilos/style.css">



<title>Cadastro de Fornecedor</title>

</head>
<body>
	<div class="container-geral-4">

		<h1>Cadastro de Fornecedore</h1>

		<div class="container-porta-cards-cad-fornecedor">

			<div class="inputs-cadastro-for">

				<form action="gravarFornecedor.jsp?editar=no" method="POST">

					<h3>Empresa</h3>
					<input type="text" id="nome" name="nome"
						placeholder="Informe o Nome">
					<h3>CNPJ</h3>
					<input type="text" id="cnpj" name="cnpj"
						placeholder="Informe o CNPJ">
					<h3>Telefone</h3>
					<input type="text" id="fone" name="fone"
						placeholder="Informe o telefone">
					<h3>Email</h3>
					<input type="text" id="email" name="email"
						placeholder="Informe o E-mail">
					<hr>
					<button onclick="Validar()">Salvar</button>

				</form>	
				
				<hr>			
					<input
						style="padding: 0.5rem; margin: 1rem; font-size: large; background-color: #9ca5af; border: none; border-radius: 10px;"						
						type="button"
						onclick="document.location.href='<%="showFornecedor.jsp"%>'"
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
    	
    	let cnpj = document.getElementById('cnpj')
    	if(cnpj.value == ''){
    		alert('Informe cnpj')
    		cnpj.focus()
    		return
    	}
    	
    	let  fone = document.getElementById('fone')
    	if(fone.value == ''){
    		alert('Informe fone')
    		fone.focus()
    		return
    	}
    	
    	let  email = document.getElementById('email')
    	if(email.value == ''){
    		alert('Informe email')
    		email.focus()
    		return
    	}
    	
    	document.getElementsByTagName('form')[0].submit()
    }
    
    function(){
    	location.href = showFornecedor.jsp;
    }
    </script>
</body>
</html>