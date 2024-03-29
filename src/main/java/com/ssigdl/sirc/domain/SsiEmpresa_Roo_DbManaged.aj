// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiDireccionEmpresa;
import com.ssigdl.sirc.domain.SsiEmpresa;
import com.ssigdl.sirc.domain.SsiEmpresaCat;
import com.ssigdl.sirc.domain.SsiFactura;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect SsiEmpresa_Roo_DbManaged {
    
    @OneToMany(mappedBy = "factEmpIdFk")
    private Set<SsiFactura> SsiEmpresa.ssiFacturas;
    
    @ManyToOne
    @JoinColumn(name = "emp_dire_id_fk", referencedColumnName = "dire_id", nullable = false)
    private SsiDireccionEmpresa SsiEmpresa.empDireIdFk;
    
    @ManyToOne
    @JoinColumn(name = "emp_empc_id_fk", referencedColumnName = "empc_id", nullable = false)
    private SsiEmpresaCat SsiEmpresa.empEmpcIdFk;
    
    @Column(name = "emp_nombre", columnDefinition = "VARCHAR", length = 100)
    private String SsiEmpresa.empNombre;
    
    @Column(name = "emp_fecha_registro", columnDefinition = "DATE")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date SsiEmpresa.empFechaRegistro;
    
    @Column(name = "emp_rfc", columnDefinition = "VARCHAR", length = 20)
    private String SsiEmpresa.empRfc;
    
    public Set<SsiFactura> SsiEmpresa.getSsiFacturas() {
        return ssiFacturas;
    }
    
    public void SsiEmpresa.setSsiFacturas(Set<SsiFactura> ssiFacturas) {
        this.ssiFacturas = ssiFacturas;
    }
    
    public SsiDireccionEmpresa SsiEmpresa.getEmpDireIdFk() {
        return empDireIdFk;
    }
    
    public void SsiEmpresa.setEmpDireIdFk(SsiDireccionEmpresa empDireIdFk) {
        this.empDireIdFk = empDireIdFk;
    }
    
    public SsiEmpresaCat SsiEmpresa.getEmpEmpcIdFk() {
        return empEmpcIdFk;
    }
    
    public void SsiEmpresa.setEmpEmpcIdFk(SsiEmpresaCat empEmpcIdFk) {
        this.empEmpcIdFk = empEmpcIdFk;
    }
    
    public String SsiEmpresa.getEmpNombre() {
        return empNombre;
    }
    
    public void SsiEmpresa.setEmpNombre(String empNombre) {
        this.empNombre = empNombre;
    }
    
    public Date SsiEmpresa.getEmpFechaRegistro() {
        return empFechaRegistro;
    }
    
    public void SsiEmpresa.setEmpFechaRegistro(Date empFechaRegistro) {
        this.empFechaRegistro = empFechaRegistro;
    }
    
    public String SsiEmpresa.getEmpRfc() {
        return empRfc;
    }
    
    public void SsiEmpresa.setEmpRfc(String empRfc) {
        this.empRfc = empRfc;
    }
    
}
