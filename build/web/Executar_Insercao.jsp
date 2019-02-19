<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.produtoDAO"%>
<%@page import="MODEL.Produto"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Produto pro = new Produto();
            produtoDAO prod = new produtoDAO();
            
            try {
                    if(request.getParameter("nome_produto").equals("") || request.getParameter("tipo_produto").equals("") || request.getParameter("preco_produto").equals("")){
                        response.sendRedirect("index.jsp");
                    }else{
                        pro.setNome_produto(request.getParameter("nome_produto"));
                        pro.setTipo_produto(request.getParameter("tipo_produto"));
                        pro.setPreco_produto(Double.parseDouble(request.getParameter("preco_produto")));
                        pro.setDescricao_produto(request.getParameter("descricao_produto"));
                        prod.inserirProduto(pro);
                        response.sendRedirect("index.jsp");
                    }
                } catch (Exception e) {
                    throw new RuntimeException("erro 6 ", e);
                }
        %>
    </body>
</html>
