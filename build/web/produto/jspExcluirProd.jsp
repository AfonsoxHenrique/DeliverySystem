<%-- 
    Document   : jspExcluirProd
    Created on : 26/11/2021, 18:47:18
    Author     : Pichau
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.DaoProduto"%>
<%@page import="DTO.ProdutoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Produto</title>
    </head>
    <body>
        <%
            if(request.getParameter("nomeProd").equals(""))            
            {
                out.print("Preencha o nome do produto <br>");
            }
            else
            {
                if(request.getParameter("pesoProd").equals(""))
                {
                    out.print("Preencha o peso do produto <br>");
                }
                else
                {
                    if(request.getParameter("volumeProd").equals(""))
                    {
                        out.print("Preencha o volume do produto <br>");
                    }
                    else
                    {
                        if(request.getParameter("valorProd").equals(""))
                        {
                            out.print("Preencha o valor do produto <br>");
                        }
                        else
                        {
                            try 
                            {
                               ProdutoDTO objDestDTO = new ProdutoDTO();
                               objDestDTO.setId_prod(Integer.parseInt(request.getParameter("id")));

                               DaoProduto objDestDAO = new DaoProduto();
                               objDestDAO.ExcluirProduto(objDestDTO);     
                            } 
                            catch (Exception e) 
                            {
                                JOptionPane.showMessageDialog(null, e);
                            }
                        }
                    }
                }
            }
            
            %>
    </body>
</html>
