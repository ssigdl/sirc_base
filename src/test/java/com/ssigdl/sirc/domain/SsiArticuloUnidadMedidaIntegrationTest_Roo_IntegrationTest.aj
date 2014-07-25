// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiArticuloUnidadMedida;
import com.ssigdl.sirc.domain.SsiArticuloUnidadMedidaDataOnDemand;
import com.ssigdl.sirc.domain.SsiArticuloUnidadMedidaIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SsiArticuloUnidadMedidaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: SsiArticuloUnidadMedidaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: SsiArticuloUnidadMedidaIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: SsiArticuloUnidadMedidaIntegrationTest: @Transactional;
    
    @Autowired
    SsiArticuloUnidadMedidaDataOnDemand SsiArticuloUnidadMedidaIntegrationTest.dod;
    
    @Test
    public void SsiArticuloUnidadMedidaIntegrationTest.testCountSsiArticuloUnidadMedidas() {
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to initialize correctly", dod.getRandomSsiArticuloUnidadMedida());
        long count = SsiArticuloUnidadMedida.countSsiArticuloUnidadMedidas();
        Assert.assertTrue("Counter for 'SsiArticuloUnidadMedida' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void SsiArticuloUnidadMedidaIntegrationTest.testFindSsiArticuloUnidadMedida() {
        SsiArticuloUnidadMedida obj = dod.getRandomSsiArticuloUnidadMedida();
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to initialize correctly", obj);
        Integer id = obj.getArumId();
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to provide an identifier", id);
        obj = SsiArticuloUnidadMedida.findSsiArticuloUnidadMedida(id);
        Assert.assertNotNull("Find method for 'SsiArticuloUnidadMedida' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'SsiArticuloUnidadMedida' returned the incorrect identifier", id, obj.getArumId());
    }
    
    @Test
    public void SsiArticuloUnidadMedidaIntegrationTest.testFindAllSsiArticuloUnidadMedidas() {
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to initialize correctly", dod.getRandomSsiArticuloUnidadMedida());
        long count = SsiArticuloUnidadMedida.countSsiArticuloUnidadMedidas();
        Assert.assertTrue("Too expensive to perform a find all test for 'SsiArticuloUnidadMedida', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<SsiArticuloUnidadMedida> result = SsiArticuloUnidadMedida.findAllSsiArticuloUnidadMedidas();
        Assert.assertNotNull("Find all method for 'SsiArticuloUnidadMedida' illegally returned null", result);
        Assert.assertTrue("Find all method for 'SsiArticuloUnidadMedida' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void SsiArticuloUnidadMedidaIntegrationTest.testFindSsiArticuloUnidadMedidaEntries() {
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to initialize correctly", dod.getRandomSsiArticuloUnidadMedida());
        long count = SsiArticuloUnidadMedida.countSsiArticuloUnidadMedidas();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<SsiArticuloUnidadMedida> result = SsiArticuloUnidadMedida.findSsiArticuloUnidadMedidaEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'SsiArticuloUnidadMedida' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'SsiArticuloUnidadMedida' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void SsiArticuloUnidadMedidaIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to initialize correctly", dod.getRandomSsiArticuloUnidadMedida());
        SsiArticuloUnidadMedida obj = dod.getNewTransientSsiArticuloUnidadMedida(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'SsiArticuloUnidadMedida' identifier to be null", obj.getArumId());
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
        Assert.assertNotNull("Expected 'SsiArticuloUnidadMedida' identifier to no longer be null", obj.getArumId());
    }
    
    @Test
    public void SsiArticuloUnidadMedidaIntegrationTest.testRemove() {
        SsiArticuloUnidadMedida obj = dod.getRandomSsiArticuloUnidadMedida();
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to initialize correctly", obj);
        Integer id = obj.getArumId();
        Assert.assertNotNull("Data on demand for 'SsiArticuloUnidadMedida' failed to provide an identifier", id);
        obj = SsiArticuloUnidadMedida.findSsiArticuloUnidadMedida(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'SsiArticuloUnidadMedida' with identifier '" + id + "'", SsiArticuloUnidadMedida.findSsiArticuloUnidadMedida(id));
    }
    
}