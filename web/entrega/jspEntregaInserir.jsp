<%-- 
    Document   : jspEntregaInserir
    Created on : 25/11/2021, 17:43:47
    Author     : Pichau
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DTO.DestinatarioDTO"%>
<%@page import="DAO.DaoDestinatario"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.DaoEntrega"%>
<%@page import="DTO.EntregaDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>Cadastar Entrega</title>
    </head>
    <body>
       <%
            if(request.getParameter("idDest").equals(""))
            {
               out.print("Digite o ID do Destinatário");
            }
            else
            {
               if(request.getParameter("idReme").equals(""))
               {
                   out.print("Digite o ID do Remetente");
               }
               else
               {
                    if(request.getParameter("situacao").equals(""))
                    {
                        out.print("Escolha a situacao");
                    }
                   else
                   {
                        if(request.getParameter("idProd").equals(""))
                        {
                            out.print("Digite o ID do Produto");
                        } 
                        else
                        {
                            try 
                            {
                               EntregaDTO objEntregaDTO = new EntregaDTO();
                                objEntregaDTO.getDestDTO().setId_dest(Integer.parseInt(request.getParameter("idDest")));
                                objEntregaDTO.getRemeDTO().setId_remetente(Integer.parseInt(request.getParameter("idReme")));
                                objEntregaDTO.setSituacao(request.getParameter("situacao"));
                                objEntregaDTO.getProdDTO().setId_prod(Integer.parseInt(request.getParameter("idProd")));

                                DaoEntrega objEntregaDAO = new DaoEntrega();
                                objEntregaDAO.CadastrarEntrega(objEntregaDTO); 

                             } 
                             catch (Exception e) 
                             {
                                 out.print(e);
                             }         
                        }
                   }
               }
            }
                     

        %>
    </body>
</html>
