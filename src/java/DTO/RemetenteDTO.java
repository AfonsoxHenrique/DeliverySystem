/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author Pichau
 */
public class RemetenteDTO {
   private int id_remetente;
   private String nome_razaosoc_remetente;
   private String cpf_cnpj_remetente;
   private String endereco_remetente;
   private String cep_remetente;

  
    public int getId_remetente() {
        return id_remetente;
    }


    public void setId_remetente(int id_remetente) {
        this.id_remetente = id_remetente;
    }

   
    public String getNome_razaosoc_remetente() {
        return nome_razaosoc_remetente;
    }

    
    public void setNome_razaosoc_remetente(String nome_razaosoc_remetente) {
        this.nome_razaosoc_remetente = nome_razaosoc_remetente;
    }

    
    public String getCpf_cnpj_remetente() {
        return cpf_cnpj_remetente;
    }

    
    public void setCpf_cnpj_remetente(String cpf_cnpj_remetente) {
        this.cpf_cnpj_remetente = cpf_cnpj_remetente;
    }

    
    public String getEndereco_remetente() {
        return endereco_remetente;
    }

    
    public void setEndereco_remetente(String endereco_remetente) {
        this.endereco_remetente = endereco_remetente;
    }


    public String getCep_remetente() {
        return cep_remetente;
    }
 
    
    public void setCep_remetente(String cep_remetente) {
        this.cep_remetente = cep_remetente;
    }
   
}
