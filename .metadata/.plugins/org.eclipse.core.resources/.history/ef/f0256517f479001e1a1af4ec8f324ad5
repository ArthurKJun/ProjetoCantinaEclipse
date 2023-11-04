<%@page import="controller.produtoController"%>
<%@page import="modelos.produto"%>
<%
   int cod_produto = 0;
    
 	 cod_produto = Integer.parseInt(request.getParameter("cod_produto"));  
 
   if(produtoController.excluir(cod_produto)){
	   response.sendRedirect("showProduto.jsp");
	   
   }
   
%>