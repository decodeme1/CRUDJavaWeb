<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="Executar_Insercao.jsp" method="post">

            <label>Nome do Produto:</label><br/>
            <input type="text" name="nome_produto"><br/>

            <label>Tipo do Produto</label><br/>
            <input type="text" name="tipo_produto"><br/>

            <label>Preco do Produto</label><br/>
            <input type="text" name="preco_produto"><br/>

            <label>Descricao do Produto</label><br/>
            <input type="text" name="descricao_produto"><br/><br/><br/>

            <input type="submit" value="enviar">

        </form>
        <br/><br/><a href="index.jsp">Cancelar</a>
    </body>
</html>
