<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
	
	<link rel="stylesheet" href="./Estilos/style.css">

	<title>Arsan Food Management</title>
	
</head>
<body>
	<h1>Arsan Food Management</h1>

    <div class="container-geral-entrada">
        <div class="container-porta-cards">


            <a href="./areaVendas.jsp" target="_self">
                <div class="card" id="venda">
                    <h3>Frente de caixa</h3>
                    <img src="https://images.vexels.com/media/users/3/205437/isolated/lists/1d84c7d31a188b47fe75640a85af8d9c-icone-de-curso-de-venda-de-compras-online.png"
                        alt="">
                </div>
            </a>

            <a href="#">
                <div class="card">

                    <h3>Adminstrativo</h3>
                    <img src="https://www.pngmart.com/files/21/Administration-PNG-File.png" alt="">

                </div>
            </a>

            <a href="./cadastroCliente.jsp" target="_self">
                <div class="card">

                    <h3>Cliente</h3>
                    <img src="https://cdn-icons-png.flaticon.com/128/6009/6009864.png" alt="">

                </div>
            </a>

            <a href="./cadastroProduto.jsp" target="_self">
                <div class="card">

                    <h3>Produtos</h3>
                    <img src="https://cdn-icons-png.flaticon.com/512/2771/2771406.png" alt="">

                </div>
            </a>

            <a href="#">
                <div class="card">

                    <h3>Estoque</h3>
                    <img src="https://cdn-icons-png.flaticon.com/512/3827/3827340.png" alt="">

                </div>
            </a>

            <a href="./cadastroFornecedor.jsp">
                <div class="card">

                    <h3>Fornecedores</h3>
                    <img src="https://cdn-icons-png.flaticon.com/512/2103/2103848.png" alt="">

                </div>
            </a>

            <a href="#">
                <div class="card">

                    <h3>Compras</h3>
                    <img src="https://cdn-icons-png.flaticon.com/512/1253/1253458.png" alt="">

                </div>
            </a>

        </div>
    </div>
</body>
</html>