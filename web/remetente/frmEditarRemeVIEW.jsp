<%-- 
    Document   : frmEditarRemeVIEW
    Created on : 28/11/2021, 13:49:58
    Author     : Pichau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edtiar Remetente</title>
    </head>
    <body>
        <form action="jspEditarReme.jsp" method="POST">
            <label> Código do Remetente: </label> <br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>">
           <br> <label>CPF/CNPJ do Remetente: </label> <br>
            <input type="text" name="cpf_cnpjReme" value="<%=request.getParameter("cpf_cnpj")%>">
           <br> <label>Nome/Razão do Remetente: </label> <br>
            <input type="text" name="nomeReme" value="<%=request.getParameter("nomeReme")%>">
            <br> <label>Endereço do Remetente: </label> <br>
            <input type="text" name="enderecoReme" value="<%=request.getParameter("endereco")%>">
            <br> <label>CEP do Remetente: </label> <br>
            <input type="text" name="cepReme" value="<%=request.getParameter("cep")%>">
            
            <button type="submit" action="jspEditarDest.jsp">Editar</button>
        </form>
    </body>
</html>
