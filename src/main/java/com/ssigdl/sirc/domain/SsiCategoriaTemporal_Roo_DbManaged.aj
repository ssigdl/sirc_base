// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiCategoriaTemporal;
import javax.persistence.Column;

privileged aspect SsiCategoriaTemporal_Roo_DbManaged {
    
    @Column(name = "catt_id_padre", columnDefinition = "INT")
    private Integer SsiCategoriaTemporal.cattIdPadre;
    
    @Column(name = "catt_id_hijo", columnDefinition = "INT")
    private Integer SsiCategoriaTemporal.cattIdHijo;
    
    @Column(name = "catt_nivel", columnDefinition = "INT")
    private Integer SsiCategoriaTemporal.cattNivel;
    
    public Integer SsiCategoriaTemporal.getCattIdPadre() {
        return cattIdPadre;
    }
    
    public void SsiCategoriaTemporal.setCattIdPadre(Integer cattIdPadre) {
        this.cattIdPadre = cattIdPadre;
    }
    
    public Integer SsiCategoriaTemporal.getCattIdHijo() {
        return cattIdHijo;
    }
    
    public void SsiCategoriaTemporal.setCattIdHijo(Integer cattIdHijo) {
        this.cattIdHijo = cattIdHijo;
    }
    
    public Integer SsiCategoriaTemporal.getCattNivel() {
        return cattNivel;
    }
    
    public void SsiCategoriaTemporal.setCattNivel(Integer cattNivel) {
        this.cattNivel = cattNivel;
    }
    
}
