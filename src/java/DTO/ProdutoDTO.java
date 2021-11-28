/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author Pichau
 */
public class ProdutoDTO {
   private int id_prod;
   private String nome_prod;
   private String peso;
   private String volume;
   private String valor;

    
    public int getId_prod() {
        return id_prod;
    }

    
    public void setId_prod(int id_prod) {
        this.id_prod = id_prod;
    }

    
    public String getNome_prod() {
        return nome_prod;
    }

    
    public void setNome_prod(String nome_prod) {
        this.nome_prod = nome_prod;
    }

    
    public String getPeso() {
        return peso;
    }

   
    public void setPeso(String peso) {
        this.peso = peso;
    }

    
    public String getVolume() {
        return volume;
    }

    
    public void setVolume(String volume) {
        this.volume = volume;
    }

    
    public String getValor() {
        return valor;
    }

    
    public void setValor(String valor) {
        this.valor = valor;
    }
}
