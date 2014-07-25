// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiFactura;
import com.ssigdl.sirc.domain.SsiFacturaDataOnDemand;
import com.ssigdl.sirc.domain.SsiFacturaServicioRel;
import com.ssigdl.sirc.domain.SsiFacturaServicioRelDataOnDemand;
import com.ssigdl.sirc.domain.SsiServicio;
import com.ssigdl.sirc.domain.SsiServicioDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect SsiFacturaServicioRelDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SsiFacturaServicioRelDataOnDemand: @Component;
    
    private Random SsiFacturaServicioRelDataOnDemand.rnd = new SecureRandom();
    
    private List<SsiFacturaServicioRel> SsiFacturaServicioRelDataOnDemand.data;
    
    @Autowired
    SsiServicioDataOnDemand SsiFacturaServicioRelDataOnDemand.ssiServicioDataOnDemand;
    
    @Autowired
    SsiFacturaDataOnDemand SsiFacturaServicioRelDataOnDemand.ssiFacturaDataOnDemand;
    
    public SsiFacturaServicioRel SsiFacturaServicioRelDataOnDemand.getNewTransientSsiFacturaServicioRel(int index) {
        SsiFacturaServicioRel obj = new SsiFacturaServicioRel();
        setFaseFactIdFk(obj, index);
        setFaseServIdFk(obj, index);
        return obj;
    }
    
    public void SsiFacturaServicioRelDataOnDemand.setFaseFactIdFk(SsiFacturaServicioRel obj, int index) {
        SsiServicio faseFactIdFk = ssiServicioDataOnDemand.getRandomSsiServicio();
        obj.setFaseFactIdFk(faseFactIdFk);
    }
    
    public void SsiFacturaServicioRelDataOnDemand.setFaseServIdFk(SsiFacturaServicioRel obj, int index) {
        SsiFactura faseServIdFk = ssiFacturaDataOnDemand.getRandomSsiFactura();
        obj.setFaseServIdFk(faseServIdFk);
    }
    
    public SsiFacturaServicioRel SsiFacturaServicioRelDataOnDemand.getSpecificSsiFacturaServicioRel(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        SsiFacturaServicioRel obj = data.get(index);
        Integer id = obj.getFaseId();
        return SsiFacturaServicioRel.findSsiFacturaServicioRel(id);
    }
    
    public SsiFacturaServicioRel SsiFacturaServicioRelDataOnDemand.getRandomSsiFacturaServicioRel() {
        init();
        SsiFacturaServicioRel obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getFaseId();
        return SsiFacturaServicioRel.findSsiFacturaServicioRel(id);
    }
    
    public boolean SsiFacturaServicioRelDataOnDemand.modifySsiFacturaServicioRel(SsiFacturaServicioRel obj) {
        return false;
    }
    
    public void SsiFacturaServicioRelDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = SsiFacturaServicioRel.findSsiFacturaServicioRelEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'SsiFacturaServicioRel' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<SsiFacturaServicioRel>();
        for (int i = 0; i < 10; i++) {
            SsiFacturaServicioRel obj = getNewTransientSsiFacturaServicioRel(i);
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
