<%-- 
    Document   : jspProdLista
    Created on : 24/11/2021, 23:16:29
    Author     : Pichau
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DaoProduto"%>
<%@page import="DTO.ProdutoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Produto</title>
    </head>
    <body>
        <%
        try 
        {
            DaoProduto objProdDAO = new DaoProduto();
            ArrayList<ProdutoDTO> lista = objProdDAO.ListarProduto();
            
            for(int num = 0;num <lista.size();num++)
            {
                out.print("Id: "+ lista.get(num).getId_prod()+ "<br>");
                out.print("Nome do Produto: "+ lista.get(num).getNome_prod()+ "<br>");
                out.print("Peso: "+ lista.get(num).getPeso() + "<br>");
                out.print("Volume do Produto: "+ lista.get(num).getVolume()+ "<br>");
                out.print("Valor do Produto: "+ lista.get(num).getValor()+ "<br>");
                
                out.print("<a href='frmExcluirProdVIEW.jsp?id="
                +lista.get(num).getId_prod()+ "&nomeProd="
                +lista.get(num).getNome_prod()+ "&pesoProd="
                +lista.get(num).getPeso()+ "&volumeProd="
                +lista.get(num).getVolume()+ "&valorProd="
                +lista.get(num).getValor()+ "'> Excluir </a>");
                
                out.print("<a href='frmEditarProdVIEW.jsp?id="
                +lista.get(num).getId_prod()+ "&nomeProd="
                +lista.get(num).getNome_prod()+ "&pesoProd="
                +lista.get(num).getPeso()+ "&volumeProd="
                +lista.get(num).getVolume()+ "&valorProd="
                +lista.get(num).getValor()+ "'> Editar </a> <br>");
            }
        } 
        catch (Exception e) 
        {
        }
            
         %>
    </body>
</html>
