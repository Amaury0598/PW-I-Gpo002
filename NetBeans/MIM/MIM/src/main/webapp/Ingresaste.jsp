<%-- 
    Document   : Ingresaste
    Created on : 21 nov 2020, 19:40:34
    Author     : amg05
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingresasteee !!</h1>
        <h2> ID: <%= session.getAttribute("id") %></h2>
        <h2>Nombre de Usuario: <%= session.getAttribute("NUser") %></h2>
        <form action="LogOffCont" method="POST">
             <button class="btn btn-info my-2 my-xl-6" type="submit">Salir</button>
        </form>
    </body>
</html>
