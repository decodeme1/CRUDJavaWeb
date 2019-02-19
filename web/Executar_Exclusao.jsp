<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.produtoDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                produtoDAO prd = new produtoDAO();
                prd.excluirProduto(Integer.parseInt(request.getParameter("id_produto")));
            } catch (Exception e) {
                throw new RuntimeException("erro 8 ", e);
            }
            
            response.sendRedirect("index.jsp");
        %>
        
        
    </body>
</html>
