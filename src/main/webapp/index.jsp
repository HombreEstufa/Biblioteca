<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.util.ArrayList" %>
 <%@ page import="modelo.Libro" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Biblioteca</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<h1>Inserta un Libro</h1>
	<% String error = (String)request.getAttribute("error");
	if (error != null) { %>
		<p> <%=error%></p>
	<%}%>
	<table  border="3">
    <tr>
        <th><b>ISBN</b></th>
        <th><b>Título</b></th>
        <th><b>Autor</b></th>
    </tr>
    <% String info = (String)request.getAttribute("info");
    	if (info != null) { %>
    		<p><%=info%></p>
    <%}%>
    
    <% ArrayList<Libro> libros = (ArrayList<Libro>)request.getAttribute("libros");
         if (libros != null) {
        	 for(Libro l:libros) { %>
        	 	<tr>
        	 		<td><%=l.getIsbn()%></td>
  					<td><%=l.getTitulo()%></td> 		
  					<td><%=l.getAutor()%></td> 	
         	<%}
         }%>
</table><br>

    <div>
        <form action="insertar" method="psot">
            <label for="isbn">ISBN: </label>
            <input type="text" name="isbn" id="isbn" placeholder="ISBN..."><br>

            <label for="titulo">Título: </label>
            <input type="text" name="titulo" id="titulo" placeholder="Titulo del libro..."><br>

            <label for="autor">Autor: </label>
            <input type="text" name="autor" id="autor" placeholder="Nombre del autor..."><br>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>