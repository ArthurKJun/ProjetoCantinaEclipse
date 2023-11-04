<%@page import="controller.clienteController"%>
<%@page import="modelos.cliente"%>
<%
   int cod_cliente = 0;
    
 	 cod_cliente = Integer.parseInt(request.getParameter("cod_cliente"));  
 
   if(clienteController.excluir(cod_cliente)){
	   response.sendRedirect("showCliente.jsp");
	   
   }
   
%>