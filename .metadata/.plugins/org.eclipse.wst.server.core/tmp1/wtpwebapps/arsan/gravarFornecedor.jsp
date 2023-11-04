<%@page import="controller.fornecedorController"%>
<%@page import="modelos.fornecedor"%>
<%
   int cod_fornecedor = 0;
   String nome = request.getParameter("nome");
   String cnpj = request.getParameter("cnpj");
   String fone = request.getParameter("fone");
   String email = request.getParameter("email");
   
   String editar = request.getParameter("editar");
   if(editar.equals("yes")){
	 cod_fornecedor = Integer.parseInt(request.getParameter("cod_fornecedor"));  
   }    
   //model Contato
   fornecedor ct = new fornecedor(cod_fornecedor, nome, cnpj, fone, email);
   
   //controler
   if(fornecedorController.salvar(ct)){
	   response.sendRedirect("showFornecedor.jsp");
	   
   }
   
%>