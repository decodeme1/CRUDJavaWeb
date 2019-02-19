<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <form action="Executar_Alteracao.jsp" method="post">
            
            <label>ID do produto:</label><br/>
            <input type="text" name="id_produto" value="<%= request.getParameter("id_produto") %>"/><br/><br/>
            
            <label>Nome do produto:</label><br/>
            <input type="text" name="nome_produto" value="<%= request.getParameter("nome_produto") %>"/><br/><br/>
            
            <label>Tipo do produto</label><br/>
            <input type="text" name="tipo_produto" value="<%= request.getParameter("tipo_produto") %>"/><br/><br/>
            
            <label>Preco do produto</label><br/>
            <input type="text" name="preco_produto" value="<%= request.getParameter("preco_produto") %>"><br/><br/>
            
            <label>Descricao do produto</label><br/>
            <input type="text" name="descricao_produto" value="<%= request.getParameter("descricao_produto") %>"/><br/><br/><br/>
            
            <input type="submit" value="Concluir Edicao">
            
        </form>
            
        <br/><br/><a href="index.jsp">Cancelar</a>
    </body>
</html>
