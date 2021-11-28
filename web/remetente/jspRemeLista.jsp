<%-- 
    Document   : jspRemeLista
    Created on : 24/11/2021, 23:16:57
    Author     : Pichau
--%>

<%@page import="DTO.RemetenteDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DaoRemetente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Remetente</title>
    </head>
    <body>
        <%
        try 
        {
            DaoRemetente objRemeDAO = new DaoRemetente();
            ArrayList<RemetenteDTO> lista = objRemeDAO.ListarRemetente();
            
            for(int num = 0;num <lista.size();num++)
            {
                out.print("Id: "+ lista.get(num).getId_remetente()+ "<br>");
                out.print("Nome do Remetente: "+ lista.get(num).getNome_razaosoc_remetente()+ "<br>");
                out.print("CPF/CNPJ: "+ lista.get(num).getCpf_cnpj_remetente()+ "<br>");
                out.print("Endereço do Remetente: "+ lista.get(num).getEndereco_remetente()+ "<br>");
                out.print("CEP do remetente: "+ lista.get(num).getCep_remetente()+ "<br>");
                
                out.print("<a href='frmExcluirRemeVIEW.jsp?id="
                +lista.get(num).getId_remetente()+ "&nomeReme="
                +lista.get(num).getNome_razaosoc_remetente()+ "&cpf_cnpj="
                +lista.get(num).getCpf_cnpj_remetente()+ "&endereco="
                +lista.get(num).getEndereco_remetente()+ "&cep_remetente="
                +lista.get(num).getCep_remetente() + "'> Excluir </a>");
                
                
                out.print("<a href='frmEditarRemeVIEW.jsp?id="
                +lista.get(num).getId_remetente()+ "&nomeReme="
                +lista.get(num).getNome_razaosoc_remetente()+ "&cpf_cnpj="
                +lista.get(num).getCpf_cnpj_remetente()+ "&endereco="
                +lista.get(num).getEndereco_remetente()+ "&cep="
                +lista.get(num).getCep_remetente()+ "'> Editar </a> <br>");
            }
        } 
        catch (Exception e) 
        {
        }
            
         %>
    </body>
</html>
