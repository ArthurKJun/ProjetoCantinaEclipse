<%@page import="controller.fornecedorController"%>
<%@page import="modelos.fornecedor"%>
<%
   int cod_fornecedor = 0;
    
 	 cod_fornecedor = Integer.parseInt(request.getParameter("cod_fornecedor"));  
 
   if(fornecedorController.excluir(cod_fornecedor)){
	   response.sendRedirect("showFornecedor.jsp");
	   
   }
   
%>