<%-- 
    Document   : jspExcluirEntrega
    Created on : 27/11/2021, 19:32:50
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
        <title>Excluir Entrega</title>
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
                    if(request.getParameter("idProd").equals(""))
                    {
                        out.print("Digite o ID do Produto");
                    } 
                    else
                    {
                        try 
                        {
                           EntregaDTO objEntregaDTO = new EntregaDTO();
                           objEntregaDTO.setId_entrega(Integer.parseInt(request.getParameter("id_entrega")));

                           DaoEntrega objEntregaDAO = new DaoEntrega();
                           objEntregaDAO.ExcluirEntrega(objEntregaDTO);     
                        } 
                        catch (Exception e) 
                        {
                            JOptionPane.showMessageDialog(null, e);
                        }
                    }
               }
            }
            
            %>
    </body>
</html>
