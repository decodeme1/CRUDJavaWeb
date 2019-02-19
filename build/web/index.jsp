<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto" %>
<%@page import="DAO.produtoDAO"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    <head>
    </head>
    <body>
        <form action="index.jsp" method="post">
            
            <label>Nome do produto:</label><br/>
            <input type="text" name="nome_produto"/> <input type="submit" value="Pesquisar"><br/><br/><br/>
            
            
            <%            
                
            try {
                produtoDAO prd = new produtoDAO();
                Produto pro = new Produto();
                
                out.print("<table>");
                
                out.print("<tr>");
                out.print("<th>ID</th> <th>Nome</th> <th>Tipo</th> <th>Preço</th> <th>Descrição</th>");
                out.print("</tr>");
                
                if(request.getParameter("nome_produto")=="" || request.getParameter("nome_produto")== null){
                    ArrayList<Produto> lista = prd.apresentarProdutos();

                    for(int cont=0; cont<lista.size(); cont++){
                        out.print("<tr>");
                        out.print("<td>"+ lista.get(cont).getId_produto() +"</td>");
                        out.print("<td>"+ lista.get(cont).getNome_produto() +"</td>");
                        out.print("<td>"+ lista.get(cont).getTipo_produto() +"</td>");
                        out.print("<td> R$ "+ lista.get(cont).getPreco_produto() +"</td>");
                        out.print("<td>"+ lista.get(cont).getDescricao_produto() +"</td>");
                        //alterar
                        out.print("<td><a href='AlterarProduto.jsp?id_produto="+ lista.get(cont).getId_produto() +
                                "&nome_produto="+ lista.get(cont).getNome_produto() +
                                "&tipo_produto="+ lista.get(cont).getTipo_produto() + 
                                "&preco_produto=" + lista.get(cont).getPreco_produto() +
                                "&descricao_produto=" + lista.get(cont).getDescricao_produto() +
                                " '> Alterar</a></td>");
                        //excluir
                        out.print("<td><a href='ExcluirProduto.jsp?id_produto=" + lista.get(cont).getId_produto() +
                                "&nome_produto=" + lista.get(cont).getNome_produto() + " '>Excluir</td>");
                        out.print("</tr>");
                    }
                }else {
                    ArrayList<Produto> lista = prd.apresentarProdutosPorNome(request.getParameter("nome_produto"));
                    for(int cont=0; cont<lista.size(); cont++){
                        out.print("<tr>");
                        out.print("<td>"+ lista.get(cont).getId_produto() +"</td>");
                        out.print("<td>"+ lista.get(cont).getNome_produto() +"</td>");
                        out.print("<td>"+ lista.get(cont).getTipo_produto() +"</td>");
                        out.print("<td> R$ "+ lista.get(cont).getPreco_produto() +"</td>");
                        out.print("<td>"+ lista.get(cont).getDescricao_produto() +"</td>");
                        //alterar
                        out.print("<td><a href='AlterarProduto.jsp?id_produto="+ lista.get(cont).getId_produto() +
                                "&nome_produto="+ lista.get(cont).getNome_produto() +
                                "&tipo_produto="+ lista.get(cont).getTipo_produto() + 
                                "&preco_produto=" + lista.get(cont).getPreco_produto() +
                                "&descricao_produto=" + lista.get(cont).getDescricao_produto() +
                                " '> Alterar</a></td>");
                        //excluir
                        out.print("<td><a href='ExcluirProduto.jsp?id_produto=" + lista.get(cont).getId_produto() +
                                "&nome_produto=" + lista.get(cont).getNome_produto() + " '>Excluir</td>");
                        out.print("</tr>");
                    }
                }
                
                
                out.print("</table>");
                    
                } catch (Exception e) {
                throw new RuntimeException("erro 10 ", e);
                }
            
            %>
            
            <br/><br/><br/>
            <label><a href="InserirProduto.jsp">Novo</a></label>
            
        </form>
    </body>
</html>
