<%-- 
    Document   : formGet
    Created on : 24/10/2020, 05:35:04 PM
    Author     : Sergio Rodríguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <title>Fromulario Get</title>
    </head>
    <body class="pagina">
        <header id="title">
          <h1>Formulario por método Get</h1>
        </header>
        
        <form action="formServlet" method="get">
            Usuario: <input type="text"     name="user"   id="user"><br>
            Password: <input type="password" name="pass"   id="password"><br>
            <br>
	    <input type="submit"   value="Enviar" class="submit">
        </form>
        
    </body>
</html>

