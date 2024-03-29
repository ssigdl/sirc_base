// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiEmpresaCat;
import com.ssigdl.sirc.domain.SsiEmpresaCatDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect SsiEmpresaCatDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SsiEmpresaCatDataOnDemand: @Component;
    
    private Random SsiEmpresaCatDataOnDemand.rnd = new SecureRandom();
    
    private List<SsiEmpresaCat> SsiEmpresaCatDataOnDemand.data;
    
    public SsiEmpresaCat SsiEmpresaCatDataOnDemand.getNewTransientSsiEmpresaCat(int index) {
        SsiEmpresaCat obj = new SsiEmpresaCat();
        setEmpcDescripcion(obj, index);
        return obj;
    }
    
    public void SsiEmpresaCatDataOnDemand.setEmpcDescripcion(SsiEmpresaCat obj, int index) {
        String empcDescripcion = "empcDescripcion_" + index;
        if (empcDescripcion.length() > 100) {
            empcDescripcion = empcDescripcion.substring(0, 100);
        }
        obj.setEmpcDescripcion(empcDescripcion);
    }
    
    public SsiEmpresaCat SsiEmpresaCatDataOnDemand.getSpecificSsiEmpresaCat(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        SsiEmpresaCat obj = data.get(index);
        Integer id = obj.getEmpcId();
        return SsiEmpresaCat.findSsiEmpresaCat(id);
    }
    
    public SsiEmpresaCat SsiEmpresaCatDataOnDemand.getRandomSsiEmpresaCat() {
        init();
        SsiEmpresaCat obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getEmpcId();
        return SsiEmpresaCat.findSsiEmpresaCat(id);
    }
    
    public boolean SsiEmpresaCatDataOnDemand.modifySsiEmpresaCat(SsiEmpresaCat obj) {
        return false;
    }
    
    public void SsiEmpresaCatDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = SsiEmpresaCat.findSsiEmpresaCatEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'SsiEmpresaCat' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<SsiEmpresaCat>();
        for (int i = 0; i < 10; i++) {
            SsiEmpresaCat obj = getNewTransientSsiEmpresaCat(i);
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
