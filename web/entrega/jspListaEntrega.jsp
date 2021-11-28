<%-- 
    Document   : jspListaEntrega
    Created on : 27/11/2021, 12:06:36
    Author     : Pichau
--%>

<%@page import="DTO.EntregaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DaoEntrega"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Entrega</title>
    </head>
    <body>
        <%
        try 
        {
            DaoEntrega objDestDAO = new DaoEntrega();
            ArrayList<EntregaDTO> lista = objDestDAO.ListarEntrega();
            
            for(int num = 0;num <lista.size();num++)
            {
                out.print("Id da Entrega: "+ lista.get(num).getId_entrega()+ "<br>");
                out.print("------------------------------------------------ <br>");
                out.print("Nome do Destinatário: "+ lista.get(num).getDestDTO().getNome_razaosoc_dest()+ "<br>");
                out.print("CPF/CPNJ do Destinatário: "+ lista.get(num).getDestDTO().getCpf_cnpj_dest()+ "<br>");
                out.print("Endereço do Destinatário: "+ lista.get(num).getDestDTO().getEndereco_dest()+ "<br>");
                out.print("CEP do Destinatário: "+ lista.get(num).getDestDTO().getCep()+ "<br>");
                out.print("------------------------------------------------ <br>");
                out.print("Nome do Remetente: "+ lista.get(num).getRemeDTO().getNome_razaosoc_remetente()+ "<br>");
                out.print("CPF/CPNJ do Remetente: "+ lista.get(num).getRemeDTO().getCpf_cnpj_remetente()+ "<br>");
                out.print("Endereço do Remetente: "+ lista.get(num).getRemeDTO().getEndereco_remetente()+ "<br>");
                out.print("CEP do Remetente: "+ lista.get(num).getRemeDTO().getCep_remetente()+ "<br>");
                out.print("------------------------------------------------ <br>");
                out.print("Nome do Produto: " + lista.get(num).getProdDTO().getNome_prod() + "<br>");
                out.print("Peso do Produto: " + lista.get(num).getProdDTO().getPeso()+ "<br>");
                out.print("Volume do Produto: " + lista.get(num).getProdDTO().getVolume()+ "<br>");
                out.print("Valor do Produto: " + lista.get(num).getProdDTO().getValor() + "<br>");
                
                out.print("Situação: "+ lista.get(num).getSituacao() + "<br>");
                out.print("------------------------------------------------ <br>");
                
                
                out.print("<a href='frmExcluirEntregaVIEW.jsp?id="
                +lista.get(num).getId_entrega()+ "&idReme="
                +lista.get(num).getRemeDTO().getId_remetente()+ "&idProd="
                +lista.get(num).getProdDTO().getId_prod()+ "&idDest="
                +lista.get(num).getDestDTO().getId_dest()+ "'> Excluir </a>");
                
                out.print("<a href='frmEditarEntregaVIEW.jsp?id="
                +lista.get(num).getId_entrega()+ "&idReme="
                +lista.get(num).getRemeDTO().getId_remetente()+ "&idProd="
                +lista.get(num).getProdDTO().getId_prod()+ "&idDest="
                +lista.get(num).getDestDTO().getId_dest() +"'> Editar </a> <br>");
            }
        } 
        
        catch (Exception e) 
        {
        }
            
        %>  
    </body>
</html>
