<%-- 
    Document   : frmExcluirDestVIEW
    Created on : 26/11/2021, 18:35:56
    Author     : Pichau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Produto</title>
    </head>
    <body>
        <form action="jspExcluirProd.jsp" method="POST">
            <label> Código do Produto: </label> <br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>">
           <br> <label>Nome do Produto: </label> <br>
            <input type="text" name="nomeProd" value="<%=request.getParameter("nomeProd")%>">
           <br> <label>Peso: </label> <br>
            <input type="text" name="pesoProd" value="<%=request.getParameter("pesoProd")%>">
            <br> <label>Volume: </label> <br>
            <input type="text" name="volumeProd" value="<%=request.getParameter("volumeProd")%>">
            <br> <label>Valor: </label> <br>
            <input type="text" name="valorProd" value="<%=request.getParameter("valorProd")%>">
            
            <button type="submit">Excluir</button>
    </body>
</html>
