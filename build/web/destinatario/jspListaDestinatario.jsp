<%-- 
    Document   : jspListaDestinatario
    Created on : 24/11/2021, 22:32:14
    Author     : Pichau
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DTO.DestinatarioDTO"%>
<%@page import="DAO.DaoDestinatario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Destinatário</title>
    </head>
    <body> 
        <%
        try 
        {
            DaoDestinatario objDestDAO = new DaoDestinatario();
            ArrayList<DestinatarioDTO> lista = objDestDAO.ListarDestinatario();
            
            for(int num = 0;num <lista.size();num++)
            {
                out.print("Id: "+ lista.get(num).getId_dest() + "<br>");
                out.print("Nome do Destinatário: "+ lista.get(num).getNome_razaosoc_dest()+ "<br>");
                out.print("CPF/CPNJ do Destinatário: "+ lista.get(num).getCpf_cnpj_dest()+ "<br>");
                out.print("Endereço do Destinatário: "+ lista.get(num).getEndereco_dest()+ "<br>");
                out.print("Cep do Destinatário: " + lista.get(num).getCep()+ "<br>");
                
                out.print("<a href='frmExcluirDestVIEW.jsp?id="
                +lista.get(num).getId_dest() + "&nomeDest="
                +lista.get(num).getNome_razaosoc_dest() + "&cpf_cnpj="
                +lista.get(num).getCpf_cnpj_dest() + "&endereco="
                +lista.get(num).getEndereco_dest()+ "&cep="
                +lista.get(num).getCep()+ "'> Excluir </a> <br>");
                
                out.print("<a href='frmEditarDestVIEW.jsp?id="
                +lista.get(num).getId_dest() + "&nomeDest="
                +lista.get(num).getNome_razaosoc_dest() + "&cpf_cnpj="
                +lista.get(num).getCpf_cnpj_dest() + "&endereco="
                +lista.get(num).getEndereco_dest()+ "&cep="
                +lista.get(num).getCep()+ "'> Editar </a> <br>");
            }
        } 
        
        catch (Exception e) 
        {
        }
            
        %>  
    </body>
</html>
