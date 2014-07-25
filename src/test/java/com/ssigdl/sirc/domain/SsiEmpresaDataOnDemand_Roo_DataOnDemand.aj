// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiDireccionEmpresa;
import com.ssigdl.sirc.domain.SsiDireccionEmpresaDataOnDemand;
import com.ssigdl.sirc.domain.SsiEmpresa;
import com.ssigdl.sirc.domain.SsiEmpresaCat;
import com.ssigdl.sirc.domain.SsiEmpresaCatDataOnDemand;
import com.ssigdl.sirc.domain.SsiEmpresaDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect SsiEmpresaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SsiEmpresaDataOnDemand: @Component;
    
    private Random SsiEmpresaDataOnDemand.rnd = new SecureRandom();
    
    private List<SsiEmpresa> SsiEmpresaDataOnDemand.data;
    
    @Autowired
    SsiDireccionEmpresaDataOnDemand SsiEmpresaDataOnDemand.ssiDireccionEmpresaDataOnDemand;
    
    @Autowired
    SsiEmpresaCatDataOnDemand SsiEmpresaDataOnDemand.ssiEmpresaCatDataOnDemand;
    
    public SsiEmpresa SsiEmpresaDataOnDemand.getNewTransientSsiEmpresa(int index) {
        SsiEmpresa obj = new SsiEmpresa();
        setEmpDireIdFk(obj, index);
        setEmpEmpcIdFk(obj, index);
        setEmpFechaRegistro(obj, index);
        setEmpNombre(obj, index);
        setEmpRfc(obj, index);
        return obj;
    }
    
    public void SsiEmpresaDataOnDemand.setEmpDireIdFk(SsiEmpresa obj, int index) {
        SsiDireccionEmpresa empDireIdFk = ssiDireccionEmpresaDataOnDemand.getRandomSsiDireccionEmpresa();
        obj.setEmpDireIdFk(empDireIdFk);
    }
    
    public void SsiEmpresaDataOnDemand.setEmpEmpcIdFk(SsiEmpresa obj, int index) {
        SsiEmpresaCat empEmpcIdFk = ssiEmpresaCatDataOnDemand.getRandomSsiEmpresaCat();
        obj.setEmpEmpcIdFk(empEmpcIdFk);
    }
    
    public void SsiEmpresaDataOnDemand.setEmpFechaRegistro(SsiEmpresa obj, int index) {
        Date empFechaRegistro = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setEmpFechaRegistro(empFechaRegistro);
    }
    
    public void SsiEmpresaDataOnDemand.setEmpNombre(SsiEmpresa obj, int index) {
        String empNombre = "empNombre_" + index;
        if (empNombre.length() > 100) {
            empNombre = empNombre.substring(0, 100);
        }
        obj.setEmpNombre(empNombre);
    }
    
    public void SsiEmpresaDataOnDemand.setEmpRfc(SsiEmpresa obj, int index) {
        String empRfc = "empRfc_" + index;
        if (empRfc.length() > 20) {
            empRfc = empRfc.substring(0, 20);
        }
        obj.setEmpRfc(empRfc);
    }
    
    public SsiEmpresa SsiEmpresaDataOnDemand.getSpecificSsiEmpresa(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        SsiEmpresa obj = data.get(index);
        Integer id = obj.getEmpId();
        return SsiEmpresa.findSsiEmpresa(id);
    }
    
    public SsiEmpresa SsiEmpresaDataOnDemand.getRandomSsiEmpresa() {
        init();
        SsiEmpresa obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getEmpId();
        return SsiEmpresa.findSsiEmpresa(id);
    }
    
    public boolean SsiEmpresaDataOnDemand.modifySsiEmpresa(SsiEmpresa obj) {
        return false;
    }
    
    public void SsiEmpresaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = SsiEmpresa.findSsiEmpresaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'SsiEmpresa' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<SsiEmpresa>();
        for (int i = 0; i < 10; i++) {
            SsiEmpresa obj = getNewTransientSsiEmpresa(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}