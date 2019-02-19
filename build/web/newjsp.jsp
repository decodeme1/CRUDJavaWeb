<%-- 
    Document   : newjsp
    Created on : 17/02/2019, 09:33:07
    Author     : Wolfzinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nome="a";
        %>
        
        <h2><%
            out.print("ola ! " + nome); 
        %></h2>
    </body>
</html>
