<%-- 
    Document   : jspExcluirLivro
    Created on : 26/11/2021, 17:44:41
    Author     : Pichau
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.DaoDestinatario"%>
<%@page import="DTO.DestinatarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Destinatário</title>
    </head>
    <body>
        <%
            if(request.getParameter("nomeDest").equals(""))            
            {
                out.print("Preencha o nome do destinatário <br>");
            }
            else
            {
                if(request.getParameter("cpf_cnpjDest").equals(""))
                {
                    out.print("Preencha o CPF/CNPJ do destinatário <br>");
                }
                else
                {
                    if(request.getParameter("enderecoDest").equals(""))
                    {
                        out.print("Preencha o endereço do destinatário <br>");
                    }
                    else
                    {
                        if(request.getParameter("cepDest").equals(""))
                        {
                            out.print("Preencha o CEP do destinatário <br>");
                        }
                        else
                        {
                            try 
                            {
                               DestinatarioDTO objDestDTO = new DestinatarioDTO();
                               objDestDTO.setId_dest(Integer.parseInt(request.getParameter("id")));

                               DaoDestinatario objDestDAO = new DaoDestinatario();
                               objDestDAO.ExcluirDestinatario(objDestDTO);     
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
