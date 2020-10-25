<%-- 
    Document   : formPost
    Created on : 24/10/2020, 05:55:07 PM
    Author     : Sergio Rodríguez.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <title>Fromulario Post</title>
    </head>
    <body class="pagina">
        <header id="title">
          <h1>Formulario por método Post</h1>
        </header>
        
        <form action="formServlet" method="post">
            Usuario: <input type="text"     name="user"   id="user"><br>
            Password: <input type="password" name="pass"   id="password"><br>
            <br>
	    <input type="submit"   value="Enviar" class="submit">
        </form>
        
    </body>
</html>
