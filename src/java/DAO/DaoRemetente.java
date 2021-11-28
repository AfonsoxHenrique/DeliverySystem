/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.DestinatarioDTO;
import DTO.RemetenteDTO;
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
public class DaoRemetente {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<RemetenteDTO> lista = new ArrayList(); 
    public void CadastrarRemetente(RemetenteDTO objRemetente) throws ClassNotFoundException
    {
        String sql = " insert into remetente (nome_razaosoc_remetente, cpf_cnpj_remetente, endereco_remetente, cep_remetente) "
                + " values (?, ?, ?, ?) ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objRemetente.getNome_razaosoc_remetente());
            pstm.setString(2, objRemetente.getCpf_cnpj_remetente());
            pstm.setString(3, objRemetente.getEndereco_remetente());
            pstm.setString(4, objRemetente.getCep_remetente());
            
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
    public ArrayList<RemetenteDTO> ListarRemetente() throws ClassNotFoundException           
    {
        String sql = " select * from remetente ";
        con = new DaoConnection().dbConection();
        
        try 
        {
           pstm = con.prepareStatement(sql);
           rs = pstm.executeQuery(sql);
           
           while(rs.next())
           {
               RemetenteDTO objRemetenteDTO = new RemetenteDTO();
               objRemetenteDTO.setId_remetente(rs.getInt("id_remetente"));
               objRemetenteDTO.setNome_razaosoc_remetente(rs.getString("nome_razaosoc_remetente"));
               objRemetenteDTO.setCpf_cnpj_remetente(rs.getString("cpf_cnpj_remetente"));
               objRemetenteDTO.setEndereco_remetente(rs.getString("endereco_remetente"));
               objRemetenteDTO.setCep_remetente(rs.getString("cep_remetente"));
               
               lista.add(objRemetenteDTO);
           }
        } 
        catch (Exception e) 
        {
            
        }
        return lista;
    }
    public void ExcluirRemetente(RemetenteDTO objRemetente) throws ClassNotFoundException
    {
        String sql = " Delete From remetente Where id_remetente = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objRemetente.getId_remetente());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            if(e.getErrorCode() == 1451)
            {
                JOptionPane.showMessageDialog(null, "Remetente cadastrado em uma entraga, não pode ser excluído");
            }
            else
            {
                JOptionPane.showMessageDialog(null, e);
            }
        }
    }
    public void EditarRemetente(RemetenteDTO objRemetente) throws ClassNotFoundException
    {
        String sql = " update remetente set nome_razaosoc_remetente = ?, cpf_cnpj_remetente = ?, "
                + " endereco_remetente = ?, cep_remetente = ? "
                + " where id_remetente = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objRemetente.getNome_razaosoc_remetente());
            pstm.setString(2, objRemetente.getCpf_cnpj_remetente());
            pstm.setString(3, objRemetente.getEndereco_remetente());
            pstm.setString(4, objRemetente.getCep_remetente());
            pstm.setInt(5, objRemetente.getId_remetente());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            if(e.getErrorCode() == 1451)
            {
                JOptionPane.showMessageDialog(null, "remetente cadastrado em uma entraga, não pode ser excluído");
            }
            else
            {
                JOptionPane.showMessageDialog(null, e);   
            }
        }   
   }
}
