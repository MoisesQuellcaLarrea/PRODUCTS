<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    List<Productos> lista = (List<Productos>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    
    <body>
        
        <animatecolor  
             EMERGENTES II </>
           
        <h1>========PRODUCTOS========</h1>
           <h1>===MOISES QUELLCA LARREA====</h1>
        <p><a href="MainController?op=nuevo">Nuevo producto</a></p>
        <table border="10">
            <tr>
                <th>Id</th>
                <th>PRODUCTO</th>
                <th>PRECIO</th>
                <th>CANTIDAD</th>
                <th>MODIFICAR</th>
                <th>ELIMINAR</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.producto}</td>
                    <td>${item.precio}</td>
                    <td>${item.cantidad}</td>
                    <td> <a href="MainController?op=modificar&id=${item.id}">Modificar</a></td>
                    <td> <a href="MainController?op=eliminar&id=${item.id}"
                            onclick="return(confirm('Esta seguro ???'))" >Eliminar</a></td>                   
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
