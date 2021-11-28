<%-- 
    Document   : frmEditarProdVIEW
    Created on : 28/11/2021, 15:44:43
    Author     : Pichau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Produto</title>
    </head>
    <body>
        <form action="jspEditarProduto.jsp" method="POST">
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
            
            <button type="submit" action="jspEditarDest.jsp">Editar</button>
            
        </form>
    </body>
</html>
