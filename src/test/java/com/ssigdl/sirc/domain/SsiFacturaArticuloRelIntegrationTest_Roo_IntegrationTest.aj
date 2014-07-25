// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiFacturaArticuloRel;
import com.ssigdl.sirc.domain.SsiFacturaArticuloRelDataOnDemand;
import com.ssigdl.sirc.domain.SsiFacturaArticuloRelIntegrationTest;
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

privileged aspect SsiFacturaArticuloRelIntegrationTest_Roo_IntegrationTest {
    
    declare @type: SsiFacturaArticuloRelIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: SsiFacturaArticuloRelIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: SsiFacturaArticuloRelIntegrationTest: @Transactional;
    
    @Autowired
    SsiFacturaArticuloRelDataOnDemand SsiFacturaArticuloRelIntegrationTest.dod;
    
    @Test
    public void SsiFacturaArticuloRelIntegrationTest.testCountSsiFacturaArticuloRels() {
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to initialize correctly", dod.getRandomSsiFacturaArticuloRel());
        long count = SsiFacturaArticuloRel.countSsiFacturaArticuloRels();
        Assert.assertTrue("Counter for 'SsiFacturaArticuloRel' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void SsiFacturaArticuloRelIntegrationTest.testFindSsiFacturaArticuloRel() {
        SsiFacturaArticuloRel obj = dod.getRandomSsiFacturaArticuloRel();
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to initialize correctly", obj);
        Integer id = obj.getFartId();
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to provide an identifier", id);
        obj = SsiFacturaArticuloRel.findSsiFacturaArticuloRel(id);
        Assert.assertNotNull("Find method for 'SsiFacturaArticuloRel' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'SsiFacturaArticuloRel' returned the incorrect identifier", id, obj.getFartId());
    }
    
    @Test
    public void SsiFacturaArticuloRelIntegrationTest.testFindAllSsiFacturaArticuloRels() {
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to initialize correctly", dod.getRandomSsiFacturaArticuloRel());
        long count = SsiFacturaArticuloRel.countSsiFacturaArticuloRels();
        Assert.assertTrue("Too expensive to perform a find all test for 'SsiFacturaArticuloRel', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<SsiFacturaArticuloRel> result = SsiFacturaArticuloRel.findAllSsiFacturaArticuloRels();
        Assert.assertNotNull("Find all method for 'SsiFacturaArticuloRel' illegally returned null", result);
        Assert.assertTrue("Find all method for 'SsiFacturaArticuloRel' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void SsiFacturaArticuloRelIntegrationTest.testFindSsiFacturaArticuloRelEntries() {
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to initialize correctly", dod.getRandomSsiFacturaArticuloRel());
        long count = SsiFacturaArticuloRel.countSsiFacturaArticuloRels();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<SsiFacturaArticuloRel> result = SsiFacturaArticuloRel.findSsiFacturaArticuloRelEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'SsiFacturaArticuloRel' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'SsiFacturaArticuloRel' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void SsiFacturaArticuloRelIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to initialize correctly", dod.getRandomSsiFacturaArticuloRel());
        SsiFacturaArticuloRel obj = dod.getNewTransientSsiFacturaArticuloRel(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'SsiFacturaArticuloRel' identifier to be null", obj.getFartId());
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
        Assert.assertNotNull("Expected 'SsiFacturaArticuloRel' identifier to no longer be null", obj.getFartId());
    }
    
    @Test
    public void SsiFacturaArticuloRelIntegrationTest.testRemove() {
        SsiFacturaArticuloRel obj = dod.getRandomSsiFacturaArticuloRel();
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to initialize correctly", obj);
        Integer id = obj.getFartId();
        Assert.assertNotNull("Data on demand for 'SsiFacturaArticuloRel' failed to provide an identifier", id);
        obj = SsiFacturaArticuloRel.findSsiFacturaArticuloRel(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'SsiFacturaArticuloRel' with identifier '" + id + "'", SsiFacturaArticuloRel.findSsiFacturaArticuloRel(id));
    }
    
}