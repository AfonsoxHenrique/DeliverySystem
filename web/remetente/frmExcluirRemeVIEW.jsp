<%-- 
    Document   : frmExcluirRemeVIEW
    Created on : 26/11/2021, 19:11:14
    Author     : Pichau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Remetente</title>
    </head>
    <body>
        <form action="jspExcluirReme.jsp" method="POST">
            <label> Código do Remetente: </label> <br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>">
           <br> <label>CPF/CNPJ do Remetente: </label> <br>
            <input type="text" name="cpf_cnpjReme" value="<%=request.getParameter("cpf_cnpj")%>">
           <br> <label>Nome do Remetente: </label> <br>
            <input type="text" name="nomeReme" value="<%=request.getParameter("nomeReme")%>">
            <br> <label>Endereço do Remetente: </label> <br>
            <input type="text" name="enderecoReme" value="<%=request.getParameter("endereco")%>">
            <br> <label>CEP do Remetente: </label> <br>
            <input type="text" name="cepReme" value="<%=request.getParameter("cep_remetente")%>">
            
            
            <button type="submit">Excluir</button>
        </form>
    </body>
</html>
