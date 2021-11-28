<%-- 
    Document   : jspRemeInserir
    Created on : 24/11/2021, 18:44:49
    Author     : Pichau
--%>

<%@page import="DAO.DaoRemetente"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="DTO.RemetenteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8"/>
        <title>Cadastrar Remetente</title>
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
                               RemetenteDTO objRemeDTO = new RemetenteDTO();
                               objRemeDTO.setNome_razaosoc_remetente(request.getParameter("nomeReme"));
                               objRemeDTO.setCpf_cnpj_remetente(request.getParameter("cpf_cnpjReme"));
                               objRemeDTO.setEndereco_remetente(request.getParameter("enderecoReme"));
                               objRemeDTO.setCep_remetente(request.getParameter("cepReme"));

                               DaoRemetente objRemeDAO = new DaoRemetente();
                               objRemeDAO.CadastrarRemetente(objRemeDTO);
                               out.print("Remetente cadastrado");
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
