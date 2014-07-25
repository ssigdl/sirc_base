package com.ssigdl.sirc.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "ssi_empresa_cat")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "ssiEmpresas" })
public class SsiEmpresaCat {
}
