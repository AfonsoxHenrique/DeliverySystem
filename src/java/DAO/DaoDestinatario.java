/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.DestinatarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Pichau
 */
public class DaoDestinatario {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<DestinatarioDTO> lista = new ArrayList();
    public void CadastrarDestinatario(DestinatarioDTO objDestinatario) throws ClassNotFoundException
    {
        String sql = " insert into destinatario (nome_razaosoc_dest, cpf_cnpj_dest, endereco_dest, cep) "
                + " values (?, ?, ?, ?) ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objDestinatario.getNome_razaosoc_dest());
            pstm.setString(2, objDestinatario.getCpf_cnpj_dest());
            pstm.setString(3, objDestinatario.getEndereco_dest());
            pstm.setString(4, objDestinatario.getCep());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            if(e.getErrorCode() == 1062)
            {
                JOptionPane.showMessageDialog(null, "CPF já existente");   
            }
            JOptionPane.showMessageDialog(null, e);
        }
    }
    public ArrayList<DestinatarioDTO> ListarDestinatario() throws ClassNotFoundException           
    {
        String sql = " select * from destinatario ";
        con = new DaoConnection().dbConection();
        
        try 
        {
           pstm = con.prepareStatement(sql);
           rs = pstm.executeQuery(sql);
           
           while(rs.next())
           {
               DestinatarioDTO objDestDTO = new DestinatarioDTO();
               objDestDTO.setId_dest(rs.getInt("id_dest"));
               objDestDTO.setNome_razaosoc_dest(rs.getString("nome_razaosoc_dest"));
               objDestDTO.setCpf_cnpj_dest(rs.getString("cpf_cnpj_dest"));
               objDestDTO.setEndereco_dest(rs.getString("endereco_dest"));
               objDestDTO.setCep(rs.getString("cep"));
               lista.add(objDestDTO);
           }
        } 
        catch (Exception e) 
        {
            
        }
        return lista;
    }  
    public ArrayList<DestinatarioDTO> ListarEntregaIdDest(DestinatarioDTO objDest) throws ClassNotFoundException
    { 
        
        String sql = "select * from destinatario Where id_dest = ? ";
        con = new DaoConnection().dbConection();
        
        try 
        {
           
           pstm = con.prepareStatement(sql);
           pstm.setInt(1, objDest.getId_dest());
           
           rs = pstm.executeQuery(sql);

           while(rs.next())
           {
               DestinatarioDTO objDestDTO = new DestinatarioDTO();
               objDestDTO.setId_dest(rs.getInt("id_dest"));
               objDestDTO.setNome_razaosoc_dest(rs.getString("nome_razaosoc_dest"));
               objDestDTO.setCpf_cnpj_dest(rs.getString("cpf_cnpj_dest"));
               objDestDTO.setEndereco_dest(rs.getString("endereco_dest"));
               
               lista.add(objDestDTO);
           }
           pstm.close(); 
        } 
        catch (SQLException e) 
        {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return lista;
    }
    public void ExcluirDestinatario(DestinatarioDTO objDestinatario) throws ClassNotFoundException
    {
        String sql = " Delete from destinatario where id_dest = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objDestinatario.getId_dest());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            if(e.getErrorCode() == 1451)
            {
                JOptionPane.showMessageDialog(null, "Destinatário cadastrado em uma entraga, não pode ser excluído");
            }
            else
            {
                JOptionPane.showMessageDialog(null, e);   
            }
            
        }
        
    }
    public void EditarDestinatario(DestinatarioDTO objDestinatario) throws ClassNotFoundException
    {
        String sql = " update destinatario set nome_razaosoc_dest = ?, cpf_cnpj_dest = ?, "
                + " endereco_dest = ?, cep = ? "
                + " where id_dest = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objDestinatario.getNome_razaosoc_dest());
            pstm.setString(2, objDestinatario.getCpf_cnpj_dest());
            pstm.setString(3, objDestinatario.getEndereco_dest());
            pstm.setString(4, objDestinatario.getCep());
            pstm.setInt(5, objDestinatario.getId_dest());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            if(e.getErrorCode() == 1451)
            {
                JOptionPane.showMessageDialog(null, "Destinatário cadastrado em uma entraga, não pode ser excluído");
            }
            else
            {
                JOptionPane.showMessageDialog(null, e);   
            }
        }   
   }
}
        
    
    
