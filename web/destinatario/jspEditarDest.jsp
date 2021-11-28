<%-- 
    Document   : jspAlterarDest
    Created on : 27/11/2021, 21:31:57
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
        <title>Editar Destinatário</title>
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
                               objDestDTO.setCpf_cnpj_dest(request.getParameter("cpf_cnpjDest"));
                               objDestDTO.setNome_razaosoc_dest(request.getParameter("nomeDest"));
                               objDestDTO.setEndereco_dest((request.getParameter("enderecoDest")));
                               objDestDTO.setCep((request.getParameter("cepDest")));

                               DaoDestinatario objDestDAO = new DaoDestinatario();
                               objDestDAO.EditarDestinatario(objDestDTO);     
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
