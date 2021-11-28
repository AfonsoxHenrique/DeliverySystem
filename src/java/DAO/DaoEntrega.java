/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.DestinatarioDTO;
import DTO.EntregaDTO;
import DTO.ProdutoDTO;
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
public class DaoEntrega {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<EntregaDTO> lista = new ArrayList();
    ArrayList<DestinatarioDTO> listaDest = new ArrayList();
    
    public void CadastrarEntrega (EntregaDTO objEntrega) throws ClassNotFoundException
    {
        String sql = " insert into entrega (situacao, id_dest, id_remetente, id_prod) "
        + " values (?, ?, ?, ?) ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objEntrega.getSituacao());
            pstm.setInt(2, objEntrega.getDestDTO().getId_dest());
            pstm.setInt(3, objEntrega.getRemeDTO().getId_remetente());
            pstm.setInt(4, objEntrega.getProdDTO().getId_prod());
            
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    public ArrayList<EntregaDTO> ListarEntrega() throws ClassNotFoundException           
    {
        String sql = " Select En.id_entrega, En.situacao, "
                + "Dest.nome_razaosoc_dest, Dest.cpf_cnpj_dest, Dest.endereco_dest, Dest.cep, Dest.id_dest, "
                + "Reme.nome_razaosoc_remetente, Reme.cpf_cnpj_remetente, Reme.endereco_remetente, Reme.cep_remetente, Reme.id_remetente, "
                + "Prod.nome_prod, Prod.peso, Prod.volume, Prod.valor, Prod.id_prod \n" +
                "From entrega as En  \n" +
                "Join destinatario as Dest on En.id_dest = Dest.id_dest\n" +
                "Join remetente as Reme on En.id_remetente = Reme.id_remetente\n" +
                "Join produto as Prod on En.id_prod = Prod.id_prod;";
        con = new DaoConnection().dbConection();
        
        try 
        {
           pstm = con.prepareStatement(sql);
           rs = pstm.executeQuery(sql);
           
           while(rs.next())
           {
               EntregaDTO objEntregaDTO = new EntregaDTO();
               objEntregaDTO.setId_entrega(rs.getInt("id_entrega"));
                              
               objEntregaDTO.getDestDTO().setId_dest(rs.getInt("id_dest"));
               objEntregaDTO.getDestDTO().setNome_razaosoc_dest(rs.getString("nome_razaosoc_dest"));
               objEntregaDTO.getDestDTO().setCpf_cnpj_dest(rs.getString("cpf_cnpj_dest"));
               objEntregaDTO.getDestDTO().setEndereco_dest(rs.getString("endereco_dest"));
               objEntregaDTO.getDestDTO().setCep(rs.getString("cep"));
               
               objEntregaDTO.getRemeDTO().setId_remetente(rs.getInt("id_remetente"));
               objEntregaDTO.getRemeDTO().setNome_razaosoc_remetente(rs.getString("nome_razaosoc_remetente"));
               objEntregaDTO.getRemeDTO().setCpf_cnpj_remetente(rs.getString("cpf_cnpj_remetente"));
               objEntregaDTO.getRemeDTO().setEndereco_remetente(rs.getString("endereco_remetente"));
               objEntregaDTO.getRemeDTO().setCep_remetente(rs.getString("cep_remetente"));
               
               objEntregaDTO.getProdDTO().setId_prod(rs.getInt("id_prod"));
               objEntregaDTO.getProdDTO().setNome_prod(rs.getString("nome_prod"));
               objEntregaDTO.getProdDTO().setPeso((rs.getString("peso")));
               objEntregaDTO.getProdDTO().setVolume((rs.getString("volume")));
               objEntregaDTO.getProdDTO().setValor(rs.getString("valor"));
               
               objEntregaDTO.setSituacao(rs.getString("situacao"));
               
               lista.add(objEntregaDTO);
           }
        } 
        catch (SQLException e) 
        {
            JOptionPane.showMessageDialog(null, e.getErrorCode());
        }
        return lista;
    }
    public void ExcluirEntrega (EntregaDTO objEntrega) throws ClassNotFoundException
    {
        String sql = " Delete from entrega where id_entrega = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEntrega.getId_entrega());
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    public void EditarEntrega(EntregaDTO objEntrega) throws ClassNotFoundException
    {
        String sql = " update entrega set situacao = ?, id_remetente = ?, "
                + " id_dest = ?, id_prod = ? "
                + " where id_entrega = ? ";
        con = new DaoConnection().dbConection();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objEntrega.getSituacao());
            pstm.setInt(2, objEntrega.getRemeDTO().getId_remetente());
            pstm.setInt(3, objEntrega.getDestDTO().getId_dest());
            pstm.setInt(4, objEntrega.getProdDTO().getId_prod());
            pstm.setInt(5, objEntrega.getId_entrega());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            if(e.getErrorCode() == 1452)
            {
                JOptionPane.showMessageDialog(null, "O destinatário não existe");
            }
            else
            {
                JOptionPane.showMessageDialog(null, e.getErrorCode());
            }
            
        }   
   }
}
