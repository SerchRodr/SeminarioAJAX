<%-- 
    Document   : musica
    Created on : 24/10/2020, 07:42:54 PM
    Author     : Sergio Rodríguez.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <title>Tu playlist</title>
    </head>
    <body class="pagina">
        <header id="title">
          <h1>Página para crear tu propia playlist</h1>
        </header>
        
        <h2>Selecciona las canciones para generar tu playlist</h2>
        <form method="post">
            <input type="checkbox" name="song" value="watch?v=ApXoWvfEYVU"> Sunflower-Post Malone<br>
            <input type="checkbox" name="song" value="watch?v=3AtDnEC4zak"> We Don't Talk Anymore - Charlie Puth<br>
            <input type="checkbox" name="song" value="watch?v=PT2_F-1esPk"> Closer - The Chainsmokers<br>
            <input type="checkbox" name="song" value="watch?v=47dtFZ8CFo8"> Safe & Sound - Capital Cities<br>
            <input type="checkbox" name="song" value="watch?v=IvPT2QuCIOA"> Middle - DJ Snake<br>
            <input type="checkbox" name="song" value="watch?v=VPRjCeoBqrI"> A Sky Full of Stars - Coldplay<br>
            <input type="submit" value="Buscar" class="submit">
        </form>
        
        <p>Tu playlist:</p>
        <ul>
        <%
            String[] canciones = request.getParameterValues("song");
            if(canciones != null){
                for(int i = 0; i < canciones.length; i++){
                    String link = "https://www.youtube.com/" + canciones[i];
        %>
        <li>
        <%=link%>
        </li>
        <%
                }
            }
        %>
        </ul>
    </body>
</html>
