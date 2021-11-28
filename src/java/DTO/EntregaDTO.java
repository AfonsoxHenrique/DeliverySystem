/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author Pichau
 */
public class EntregaDTO {
    private int id_entrega;
    private String situacao;
    
    private DestinatarioDTO destDTO;
    private ProdutoDTO prodDTO;
    private RemetenteDTO remeDTO;

    
    public EntregaDTO()
    {
        this.destDTO = new DestinatarioDTO();
        this.prodDTO = new ProdutoDTO();
        this.remeDTO = new RemetenteDTO();
    }    
    public int getId_entrega() {
        return id_entrega;
    }

    
    public void setId_entrega(int id_entrega) {
        this.id_entrega = id_entrega;
    }

    
    public String getSituacao() {
        return situacao;
    }

    
    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    
    public DestinatarioDTO getDestDTO() {
        return destDTO;
    }

    
    public void setDestDTO(DestinatarioDTO destDTO) {
        this.destDTO = destDTO;
    }

    
    public ProdutoDTO getProdDTO() {
        return prodDTO;
    }

    
    public void setProdDTO(ProdutoDTO prodDTO) {
        this.prodDTO = prodDTO;
    }

    
    public RemetenteDTO getRemeDTO() {
        return remeDTO;
    }

   
    public void setRemeDTO(RemetenteDTO remeDTO) {
        this.remeDTO = remeDTO;
    }
}
