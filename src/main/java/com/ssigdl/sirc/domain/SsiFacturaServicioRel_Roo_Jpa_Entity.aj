// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiFacturaServicioRel;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect SsiFacturaServicioRel_Roo_Jpa_Entity {
    
    declare @type: SsiFacturaServicioRel: @Entity;
    
    declare @type: SsiFacturaServicioRel: @Table(name = "ssi_factura_servicio_rel");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "fase_id", columnDefinition = "INT")
    private Integer SsiFacturaServicioRel.faseId;
    
    public Integer SsiFacturaServicioRel.getFaseId() {
        return this.faseId;
    }
    
    public void SsiFacturaServicioRel.setFaseId(Integer id) {
        this.faseId = id;
    }
    
}
