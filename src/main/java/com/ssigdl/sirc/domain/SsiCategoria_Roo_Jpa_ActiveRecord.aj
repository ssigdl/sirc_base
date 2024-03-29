// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiCategoria;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SsiCategoria_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SsiCategoria.entityManager;
    
    public static final List<String> SsiCategoria.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager SsiCategoria.entityManager() {
        EntityManager em = new SsiCategoria().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SsiCategoria.countSsiCategorias() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SsiCategoria o", Long.class).getSingleResult();
    }
    
    public static List<SsiCategoria> SsiCategoria.findAllSsiCategorias() {
        return entityManager().createQuery("SELECT o FROM SsiCategoria o", SsiCategoria.class).getResultList();
    }
    
    public static List<SsiCategoria> SsiCategoria.findAllSsiCategorias(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SsiCategoria o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SsiCategoria.class).getResultList();
    }
    
    public static SsiCategoria SsiCategoria.findSsiCategoria(Integer catId) {
        if (catId == null) return null;
        return entityManager().find(SsiCategoria.class, catId);
    }
    
    public static List<SsiCategoria> SsiCategoria.findSsiCategoriaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SsiCategoria o", SsiCategoria.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SsiCategoria> SsiCategoria.findSsiCategoriaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SsiCategoria o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SsiCategoria.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SsiCategoria.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SsiCategoria.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SsiCategoria attached = SsiCategoria.findSsiCategoria(this.catId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SsiCategoria.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SsiCategoria.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SsiCategoria SsiCategoria.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SsiCategoria merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
