// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiDireccionEmpresa;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect SsiDireccionEmpresa_Roo_Jpa_Entity {
    
    declare @type: SsiDireccionEmpresa: @Entity;
    
    declare @type: SsiDireccionEmpresa: @Table(name = "ssi_direccion_empresa");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "dire_id", columnDefinition = "INT")
    private Integer SsiDireccionEmpresa.direId;
    
    public Integer SsiDireccionEmpresa.getDireId() {
        return this.direId;
    }
    
    public void SsiDireccionEmpresa.setDireId(Integer id) {
        this.direId = id;
    }
    
}
