<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./Estilos/style.css">

<title>Cadastro de Usu�rios</title>

</head>
<body>

	<div class="container-geral-4">

		<h1>Cadastro de Usu�rios</h1>

		<div class="container-porta-cards-cad">



			<div class="inputs-cadastro">

				<form action="gravarUsuario.jsp?editar=no" method="POST">

					<h3>Nome</h3>
					<input type="text" id="nome" name="nome"
						placeholder="Informe o Nome do Usuario">
					<h3>Cpf</h3>
					<input type="text" id="cpf" name="cpf"
						placeholder="Informe o CPF">
					<h3>email</h3>
					<input type="text" id="email" name="email"
						placeholder="Informe o Email">	
					<h3>Grau de Acesso</h3>
					<input type="number" id="cod_perfil" name="cod_perfil"
						placeholder="Informe o Grau de Acesso">
					<p>1- Total.  2- Visualizar. 3- Alterar.</p>	
					<h3>Senha</h3>
					<input type="password" id="senha" name="senha" placeholder="Digite uma senha">					
						
					<hr>
					<button onclick="Validar()">Salvar</button>
					
				</form>	
				
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
    	
    	let preco = document.getElementById('preco')
    	if(preco.value == ''){
    		alert('Informe valor do produto')
    		preco.focus()
    		return
    	}
    	
    	let  quantidade = document.getElementById('quantidade')
    	if(quantidade.value == ''){
    		alert('Informe quantidade')
    		quantidade.focus()
    		return
    	}
    	
    	    	
    	document.getElementsByTagName('form')[0].submit()
    }
    
    </script>

</body>
</html>