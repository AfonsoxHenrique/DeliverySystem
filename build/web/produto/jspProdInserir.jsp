<%-- 
    Document   : jspProdInserir
    Created on : 24/11/2021, 19:07:50
    Author     : Pichau
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.DaoProduto"%>
<%@page import="DTO.ProdutoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>Cadastrar Produto</title>
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
                               objProdDTO.setNome_prod(request.getParameter("nomeProd"));
                               objProdDTO.setPeso(request.getParameter("pesoProd")+request.getParameter("medPeso"));
                               objProdDTO.setVolume(request.getParameter("volumeProd")+request.getParameter("medVolume"));
                               objProdDTO.setValor("R$"+request.getParameter("valorProd"));
                               DaoProduto objProdDAO = new DaoProduto();
                               objProdDAO.CadastrarProduto(objProdDTO);     
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
