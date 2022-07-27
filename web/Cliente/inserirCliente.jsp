<%-- 
    Document   : inserirCliente
    Created on : 07/06/2022, 21:16:43
    Author     : sala19a
--%>

<%@page import="br.com.DAO.ClienteDAO"%>
<%@page import="br.com.DTO.ClienteDTO"%>
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
                 ClienteDTO objClienteDTO = new ClienteDTO();
                 objClienteDTO.setNome(request.getParameter("nome"));
                 ClienteDAO objClienteDAO = new ClienteDAO();
                 objClienteDAO.cadastrarCliente(objClienteDTO);
             } catch (Exception e) {
             }
   

            %>
    </body>
</html>
