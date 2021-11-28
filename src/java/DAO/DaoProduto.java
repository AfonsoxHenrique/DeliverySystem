/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.DestinatarioDTO;
import DTO.ProdutoDTO;
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
public class DaoProduto {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ProdutoDTO> lista = new ArrayList();
    public void CadastrarProduto(ProdutoDTO objProduto) throws ClassNotFoundException
    {
        String sql = " insert into produto (nome_prod, peso, volume, valor) "
                + " values (?, ?, ?, ?) ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objProduto.getNome_prod());
            pstm.setString(2, objProduto.getPeso());
            pstm.setString(3, objProduto.getVolume());
            pstm.setString(4, objProduto.getValor());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
    public ArrayList<ProdutoDTO> ListarProduto() throws ClassNotFoundException           
    {
        String sql = " select * from produto ";
        con = new DaoConnection().dbConection();
        
        try 
        {
           pstm = con.prepareStatement(sql);
           rs = pstm.executeQuery(sql);
           
           while(rs.next())
           {
               ProdutoDTO objProdDTO = new ProdutoDTO();
               objProdDTO.setId_prod(rs.getInt("id_prod"));
               objProdDTO.setNome_prod(rs.getString("nome_prod"));
               objProdDTO.setPeso(rs.getString("peso"));
               objProdDTO.setVolume(rs.getString("volume"));
               objProdDTO.setValor(rs.getString("valor"));
               
               lista.add(objProdDTO);
           }
        } 
        catch (Exception e) 
        {
            
        }
        return lista;
    }
    public void ExcluirProduto(ProdutoDTO objProduto) throws ClassNotFoundException
    {
        String sql = " Delete From produto where id_prod = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objProduto.getId_prod());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            if(e.getErrorCode() == 1451)
            {
                JOptionPane.showMessageDialog(null, "Produto cadastrado em uma entraga, não pode ser excluído");
            }
            else
            {
                JOptionPane.showMessageDialog(null, e.getErrorCode());
            }   
            
        }
    }
    public void EditarProduto(ProdutoDTO objProd) throws ClassNotFoundException
    {
        String sql = " update produto set nome_prod = ?, peso = ?, "
                + " volume = ?, valor = ? "
                + " where id_prod = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objProd.getNome_prod());
            pstm.setString(2, objProd.getPeso());
            pstm.setString(3, objProd.getVolume());
            pstm.setString(4, objProd.getValor());
            pstm.setInt(5, objProd.getId_prod());
            
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
