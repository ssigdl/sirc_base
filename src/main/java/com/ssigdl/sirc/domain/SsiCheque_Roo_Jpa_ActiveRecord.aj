// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiCheque;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SsiCheque_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SsiCheque.entityManager;
    
    public static final List<String> SsiCheque.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager SsiCheque.entityManager() {
        EntityManager em = new SsiCheque().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SsiCheque.countSsiCheques() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SsiCheque o", Long.class).getSingleResult();
    }
    
    public static List<SsiCheque> SsiCheque.findAllSsiCheques() {
        return entityManager().createQuery("SELECT o FROM SsiCheque o", SsiCheque.class).getResultList();
    }
    
    public static List<SsiCheque> SsiCheque.findAllSsiCheques(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SsiCheque o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SsiCheque.class).getResultList();
    }
    
    public static SsiCheque SsiCheque.findSsiCheque(Integer cheId) {
        if (cheId == null) return null;
        return entityManager().find(SsiCheque.class, cheId);
    }
    
    public static List<SsiCheque> SsiCheque.findSsiChequeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SsiCheque o", SsiCheque.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SsiCheque> SsiCheque.findSsiChequeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SsiCheque o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SsiCheque.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SsiCheque.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SsiCheque.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SsiCheque attached = SsiCheque.findSsiCheque(this.cheId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SsiCheque.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SsiCheque.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SsiCheque SsiCheque.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SsiCheque merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
