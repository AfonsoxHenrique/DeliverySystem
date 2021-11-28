<%-- 
    Document   : frmEditarEntregaVIEW
    Created on : 28/11/2021, 16:48:39
    Author     : Pichau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Entrega</title>
    </head>
    <body>
        <form action="jspEditarEntrega.jsp" method="POST">            
            <label> Código da Entrega: </label> <br>
            <input type="text" name="idEntrega" value="<%=request.getParameter("id")%>">
           <br> <label> Código do Destinatário: </label> <br>
            <input type="text" name="idDest" value="<%=request.getParameter("idDest")%>">
           <br> <label>Código do Remetente: </label> <br>
            <input type="text" name="idReme" value="<%=request.getParameter("idReme")%>">
           <br> <label>Código do Produto: </label> <br>
            <input type="text" name="idProd" value="<%=request.getParameter("idProd")%>">           
            <br> <label>Situação: </label> <br>
            <select name="situacao">               
                <option>Entregue</option>
                <option>A caminho</option>
            </select>
            <button type="submit" action="jspEditarEntrega.jsp">Editar</button>
        </form>
    </body>
</html>
