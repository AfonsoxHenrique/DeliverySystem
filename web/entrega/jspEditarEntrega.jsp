<%-- 
    Document   : jspEditarEntrega
    Created on : 28/11/2021, 17:22:02
    Author     : Pichau
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.DaoEntrega"%>
<%@page import="DTO.EntregaDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Entrega</title>
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
                               objEntregaDTO.setId_entrega(Integer.parseInt(request.getParameter("idEntrega")));
                               objEntregaDTO.getDestDTO().setId_dest(Integer.parseInt(request.getParameter("idDest")));
                               objEntregaDTO.getRemeDTO().setId_remetente(Integer.parseInt(request.getParameter("idReme")));
                               objEntregaDTO.getProdDTO().setId_prod(Integer.parseInt(request.getParameter("idProd")));
                               objEntregaDTO.setSituacao(request.getParameter("situacao"));

                               DaoEntrega objEntregaDAO = new DaoEntrega();
                               objEntregaDAO.EditarEntrega(objEntregaDTO);     
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
