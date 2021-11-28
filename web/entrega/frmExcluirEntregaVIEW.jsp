<%-- 
    Document   : frmExcluirEntregaVIEW
    Created on : 27/11/2021, 19:33:28
    Author     : Pichau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Entrega</title>
    </head>
    <body>
        <form action="jspExcluirEntrega.jsp" method="POST">
        <label> Id da Entrega: </label> <br>
            <input type="text" name="id_entrega" value="<%=request.getParameter("id")%>">
         <br> <label>Id do Destinatário: </label> <br>
            <input type="text" name="idDest" value="<%=request.getParameter("idDest")%>">
         <br> <label>Id do Produto: </label> <br>
            <input type="text" name="idProd" value="<%=request.getParameter("idProd")%>">                     
         <br> <label>Id do Remetente: </label>
            <input type="text" name="idReme" value="<%=request.getParameter("idReme")%>">  
            <button type="submit">Excluir</button>  
    </body>
</html>
