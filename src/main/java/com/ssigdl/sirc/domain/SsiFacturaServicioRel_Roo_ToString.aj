// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiFacturaServicioRel;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

privileged aspect SsiFacturaServicioRel_Roo_ToString {
    
    public String SsiFacturaServicioRel.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("faseServIdFk", "faseFactIdFk").toString();
    }
    
}