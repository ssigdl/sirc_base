// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiDireccionEmpresa;
import com.ssigdl.sirc.domain.SsiDireccionEmpresaDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect SsiDireccionEmpresaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SsiDireccionEmpresaDataOnDemand: @Component;
    
    private Random SsiDireccionEmpresaDataOnDemand.rnd = new SecureRandom();
    
    private List<SsiDireccionEmpresa> SsiDireccionEmpresaDataOnDemand.data;
    
    public SsiDireccionEmpresa SsiDireccionEmpresaDataOnDemand.getNewTransientSsiDireccionEmpresa(int index) {
        SsiDireccionEmpresa obj = new SsiDireccionEmpresa();
        setDireColonia(obj, index);
        setDireContacto(obj, index);
        setDireDireccion(obj, index);
        setDireEmail(obj, index);
        setDireEstado(obj, index);
        setDireMunicipio(obj, index);
        setDireSucursal(obj, index);
        return obj;
    }
    
    public void SsiDireccionEmpresaDataOnDemand.setDireColonia(SsiDireccionEmpresa obj, int index) {
        String direColonia = "direColonia_" + index;
        if (direColonia.length() > 45) {
            direColonia = direColonia.substring(0, 45);
        }
        obj.setDireColonia(direColonia);
    }
    
    public void SsiDireccionEmpresaDataOnDemand.setDireContacto(SsiDireccionEmpresa obj, int index) {
        String direContacto = "direContacto_" + index;
        if (direContacto.length() > 100) {
            direContacto = direContacto.substring(0, 100);
        }
        obj.setDireContacto(direContacto);
    }
    
    public void SsiDireccionEmpresaDataOnDemand.setDireDireccion(SsiDireccionEmpresa obj, int index) {
        String direDireccion = "direDireccion_" + index;
        if (direDireccion.length() > 60) {
            direDireccion = direDireccion.substring(0, 60);
        }
        obj.setDireDireccion(direDireccion);
    }
    
    public void SsiDireccionEmpresaDataOnDemand.setDireEmail(SsiDireccionEmpresa obj, int index) {
        String direEmail = "foo" + index + "@bar.com";
        if (direEmail.length() > 60) {
            direEmail = direEmail.substring(0, 60);
        }
        obj.setDireEmail(direEmail);
    }
    
    public void SsiDireccionEmpresaDataOnDemand.setDireEstado(SsiDireccionEmpresa obj, int index) {
        String direEstado = "direEstado_" + index;
        if (direEstado.length() > 45) {
            direEstado = direEstado.substring(0, 45);
        }
        obj.setDireEstado(direEstado);
    }
    
    public void SsiDireccionEmpresaDataOnDemand.setDireMunicipio(SsiDireccionEmpresa obj, int index) {
        String direMunicipio = "direMunicipio_" + index;
        if (direMunicipio.length() > 45) {
            direMunicipio = direMunicipio.substring(0, 45);
        }
        obj.setDireMunicipio(direMunicipio);
    }
    
    public void SsiDireccionEmpresaDataOnDemand.setDireSucursal(SsiDireccionEmpresa obj, int index) {
        String direSucursal = "direSucursal_" + index;
        if (direSucursal.length() > 45) {
            direSucursal = direSucursal.substring(0, 45);
        }
        obj.setDireSucursal(direSucursal);
    }
    
    public SsiDireccionEmpresa SsiDireccionEmpresaDataOnDemand.getSpecificSsiDireccionEmpresa(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        SsiDireccionEmpresa obj = data.get(index);
        Integer id = obj.getDireId();
        return SsiDireccionEmpresa.findSsiDireccionEmpresa(id);
    }
    
    public SsiDireccionEmpresa SsiDireccionEmpresaDataOnDemand.getRandomSsiDireccionEmpresa() {
        init();
        SsiDireccionEmpresa obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getDireId();
        return SsiDireccionEmpresa.findSsiDireccionEmpresa(id);
    }
    
    public boolean SsiDireccionEmpresaDataOnDemand.modifySsiDireccionEmpresa(SsiDireccionEmpresa obj) {
        return false;
    }
    
    public void SsiDireccionEmpresaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = SsiDireccionEmpresa.findSsiDireccionEmpresaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'SsiDireccionEmpresa' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<SsiDireccionEmpresa>();
        for (int i = 0; i < 10; i++) {
            SsiDireccionEmpresa obj = getNewTransientSsiDireccionEmpresa(i);
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