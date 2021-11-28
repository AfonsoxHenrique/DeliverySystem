<%-- 
    Document   : jspExcluirReme
    Created on : 26/11/2021, 19:09:25
    Author     : Pichau
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DTO.RemetenteDTO"%>
<%@page import="DAO.DaoRemetente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Remetente</title>
    </head>
    <body>
        <%
            if(request.getParameter("nomeReme").equals(""))            
            {
                out.print("Preencha o nome do destinatário <br>");
            }
            else
            {
                if(request.getParameter("cpf_cnpjReme").equals(""))
                {
                    out.print("Preencha o CPF/CNPJ do destinatário <br>");
                }
                else
                {
                    if(request.getParameter("enderecoReme").equals(""))
                    {
                        out.print("Preencha o endereço do destinatário <br>");
                    }
                    else
                    {
                        if(request.getParameter("cepReme").equals(""))
                        {
                            out.print("Preencha o CEP do destinatário <br>");
                        }
                        else
                        {
                            try 
                            {
                               RemetenteDTO objDestDTO = new RemetenteDTO();
                               objDestDTO.setId_remetente(Integer.parseInt(request.getParameter("id")));

                               DaoRemetente objDestDAO = new DaoRemetente();
                               objDestDAO.ExcluirRemetente(objDestDTO);     
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
