// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiCheque;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect SsiCheque_Roo_DbManaged {
    
    @Column(name = "che_numero", columnDefinition = "VARCHAR", length = 30)
    private String SsiCheque.cheNumero;
    
    @Column(name = "che_fecha", columnDefinition = "DATE")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date SsiCheque.cheFecha;
    
    @Column(name = "che_monto", columnDefinition = "DECIMAL", precision = 10, scale = 2)
    private BigDecimal SsiCheque.cheMonto;
    
    @Column(name = "che_receptor", columnDefinition = "VARCHAR", length = 100)
    private String SsiCheque.cheReceptor;
    
    @Column(name = "che_concepto", columnDefinition = "VARCHAR", length = 100)
    private String SsiCheque.cheConcepto;
    
    public String SsiCheque.getCheNumero() {
        return cheNumero;
    }
    
    public void SsiCheque.setCheNumero(String cheNumero) {
        this.cheNumero = cheNumero;
    }
    
    public Date SsiCheque.getCheFecha() {
        return cheFecha;
    }
    
    public void SsiCheque.setCheFecha(Date cheFecha) {
        this.cheFecha = cheFecha;
    }
    
    public BigDecimal SsiCheque.getCheMonto() {
        return cheMonto;
    }
    
    public void SsiCheque.setCheMonto(BigDecimal cheMonto) {
        this.cheMonto = cheMonto;
    }
    
    public String SsiCheque.getCheReceptor() {
        return cheReceptor;
    }
    
    public void SsiCheque.setCheReceptor(String cheReceptor) {
        this.cheReceptor = cheReceptor;
    }
    
    public String SsiCheque.getCheConcepto() {
        return cheConcepto;
    }
    
    public void SsiCheque.setCheConcepto(String cheConcepto) {
        this.cheConcepto = cheConcepto;
    }
    
}
