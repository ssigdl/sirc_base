// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiCategoria;
import com.ssigdl.sirc.domain.SsiCategoriaDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect SsiCategoriaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SsiCategoriaDataOnDemand: @Component;
    
    private Random SsiCategoriaDataOnDemand.rnd = new SecureRandom();
    
    private List<SsiCategoria> SsiCategoriaDataOnDemand.data;
    
    public SsiCategoria SsiCategoriaDataOnDemand.getNewTransientSsiCategoria(int index) {
        SsiCategoria obj = new SsiCategoria();
        setCatDescripcion(obj, index);
        setCatNombre(obj, index);
        setCatSuperIdFk(obj, index);
        return obj;
    }
    
    public void SsiCategoriaDataOnDemand.setCatDescripcion(SsiCategoria obj, int index) {
        String catDescripcion = "catDescripcion_" + index;
        if (catDescripcion.length() > 255) {
            catDescripcion = catDescripcion.substring(0, 255);
        }
        obj.setCatDescripcion(catDescripcion);
    }
    
    public void SsiCategoriaDataOnDemand.setCatNombre(SsiCategoria obj, int index) {
        String catNombre = "catNombre_" + index;
        if (catNombre.length() > 100) {
            catNombre = catNombre.substring(0, 100);
        }
        obj.setCatNombre(catNombre);
    }
    
    public void SsiCategoriaDataOnDemand.setCatSuperIdFk(SsiCategoria obj, int index) {
        SsiCategoria catSuperIdFk = obj;
        obj.setCatSuperIdFk(catSuperIdFk);
    }
    
    public SsiCategoria SsiCategoriaDataOnDemand.getSpecificSsiCategoria(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        SsiCategoria obj = data.get(index);
        Integer id = obj.getCatId();
        return SsiCategoria.findSsiCategoria(id);
    }
    
    public SsiCategoria SsiCategoriaDataOnDemand.getRandomSsiCategoria() {
        init();
        SsiCategoria obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getCatId();
        return SsiCategoria.findSsiCategoria(id);
    }
    
    public boolean SsiCategoriaDataOnDemand.modifySsiCategoria(SsiCategoria obj) {
        return false;
    }
    
    public void SsiCategoriaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = SsiCategoria.findSsiCategoriaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'SsiCategoria' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<SsiCategoria>();
        for (int i = 0; i < 10; i++) {
            SsiCategoria obj = getNewTransientSsiCategoria(i);
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
