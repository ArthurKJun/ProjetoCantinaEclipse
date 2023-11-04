<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./Estilos/style.css">

<title>Cadastro de Produtos</title>

</head>
<body>

	<div class="container-geral-4">

		<h1>Cadastro de Produtos</h1>

		<div class="container-porta-cards-cad">



			<div class="inputs-cadastro">

				<form action="gravarProduto.jsp?editar=no" method="POST">

					<h3>Produto</h3>
					<input type="text" id="nome" name="nome"
						placeholder="Informe o Produto">
					<h3>Pre�o</h3>
					<input type="text" id="preco" name="preco"
						placeholder="Informe o valor">
					<h3>Quantidade</h3>
					<input type="number" id="quant" name="quantidade"
						placeholder="Informe a quantidade">
					<hr>
					<button onclick="Validar()">Salvar</button>
					<hr>
				</form>	
				
				<input
						style="padding: 0.5rem; margin: 1rem; font-size: large; background-color: #9ca5af; border: none; border-radius: 10px;"						
						type="button"
						onclick="document.location.href='<%="showProduto.jsp"%>'"
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