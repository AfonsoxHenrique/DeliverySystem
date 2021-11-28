<%-- 
    Document   : jspEditarProduto
    Created on : 28/11/2021, 15:36:58
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
        <title>Editar Produto</title>
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

                               ProdutoDTO objProdDTO = new ProdutoDTO();
                               objProdDTO.setId_prod(Integer.parseInt(request.getParameter("id")));
                               objProdDTO.setNome_prod(request.getParameter("nomeProd"));
                               objProdDTO.setPeso(request.getParameter("pesoProd"));
                               objProdDTO.setVolume((request.getParameter("volumeProd")));
                               objProdDTO.setValor((request.getParameter("valorProd")));

                               DaoProduto objProdDAO = new DaoProduto();
                               objProdDAO.EditarProduto(objProdDTO);     
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
