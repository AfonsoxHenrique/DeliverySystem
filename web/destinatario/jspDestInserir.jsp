<%-- 
    Document   : jspDestInserir
    Created on : 24/11/2021, 16:42:54
    Author     : Pichau
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.DaoDestinatario"%>
<%@page import="DTO.DestinatarioDTO"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset= "utf-8">
        <title>Cadastrar Destinatário</title>
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
                               objDestDTO.setNome_razaosoc_dest(request.getParameter("nomeDest"));
                               objDestDTO.setCpf_cnpj_dest(request.getParameter("cpf_cnpjDest"));
                               objDestDTO.setEndereco_dest(request.getParameter("enderecoDest"));
                               objDestDTO.setCep(request.getParameter("cepDest"));
                               DaoDestinatario objDestDAO = new DaoDestinatario();
                               objDestDAO.CadastrarDestinatario(objDestDTO); 
                               out.print("Destinatário cadastrado");
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
