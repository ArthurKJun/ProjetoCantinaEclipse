<%@page import="controller.produtoController"%>
<%@page import="modelos.produto"%>
<%
   int cod_produto = 0;
   String nome = request.getParameter("nome");
   String preco = request.getParameter("preco");
   int quantidade = Integer.parseInt(request.getParameter("quantidade"));
   
   
   String editar = request.getParameter("editar");
   if(editar.equals("yes")){
	 cod_produto = Integer.parseInt(request.getParameter("cod_produto"));  
   }    
   //model Contato
   produto ct = new produto(cod_produto, nome, preco, quantidade);
   
   //controler
   if(produtoController.salvar(ct)){
	   response.sendRedirect("showProduto.jsp");
	   
   }
   
%>