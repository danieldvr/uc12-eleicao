<%-- 
    Document   : listarCliente
    Created on : 29/06/2022, 21:05:09
    Author     : sala19a
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.ClienteDTO"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
            ClienteDAO objClienteDAO = new ClienteDAO();
            ArrayList<ClienteDTO> lista = objClienteDAO.PesquisarCliente();
            
            
            for(int num=0; num < lista.size(); num++){
                
                out.print("Código: " + lista.get(num).getId() + "<br>");
                
                out.print("Nome: " + lista.get(num).getNome() + "<br>");
                
            }
                    
                } catch (Exception e) {
                    
                }
                
                
                        
            %>
    </body>
</html>
