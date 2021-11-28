<%-- 
    Document   : frmEditarDestVIEW
    Created on : 27/11/2021, 21:25:41
    Author     : Pichau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Destinatário</title>
    </head>
    <body>
        <form action="jspEditarDest.jsp" method="POST">
            <label> Código do Destinatário: </label> <br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>">
           <br> <label>CPF/CNPJ do Destinatário: </label> <br>
            <input type="text" name="cpf_cnpjDest" value="<%=request.getParameter("cpf_cnpj")%>">
           <br> <label>Nome do Destinatário: </label> <br>
            <input type="text" name="nomeDest" value="<%=request.getParameter("nomeDest")%>">
            <br> <label>Endereço do Destinatário: </label> <br>
            <input type="text" name="enderecoDest" value="<%=request.getParameter("endereco")%>">
            <br> <label>CEP do Destinatário: </label> <br>
            <input type="text" name="cepDest" value="<%=request.getParameter("cep")%>">
            
            <button type="submit" action="jspEditarDest.jsp">Editar</button>
        </form>
    </body>
</html>
