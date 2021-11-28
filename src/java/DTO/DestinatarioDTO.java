/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author Pichau
 */
public class DestinatarioDTO {
    private int id_dest;
   private String nome_razaosoc_dest;
   private String cpf_cnpj_dest;
   private String endereco_dest;
   private String cep;

 
    public int getId_dest() {
        return id_dest;
    }


    public void setId_dest(int id_dest) {
        this.id_dest = id_dest;
    }

    
    public String getNome_razaosoc_dest() {
        return nome_razaosoc_dest;
    }

    
    public void setNome_razaosoc_dest(String nome_razaosoc_dest) {
        this.nome_razaosoc_dest = nome_razaosoc_dest;
    }

    
    public String getCpf_cnpj_dest() {
        return cpf_cnpj_dest;
    }

    
    public void setCpf_cnpj_dest(String cpf_cnpj_dest) {
        this.cpf_cnpj_dest = cpf_cnpj_dest;
    }

    
    public String getEndereco_dest() {
        return endereco_dest;
    }

    
    public void setEndereco_dest(String endereco_dest) {
        this.endereco_dest = endereco_dest;
    }


    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }
}
