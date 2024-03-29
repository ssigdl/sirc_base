// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.domain;

import com.ssigdl.sirc.domain.SsiArticulo;
import com.ssigdl.sirc.domain.SsiArticuloUnidadMedida;
import com.ssigdl.sirc.domain.SsiCategoria;
import com.ssigdl.sirc.domain.SsiFacturaArticuloRel;
import java.math.BigDecimal;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

privileged aspect SsiArticulo_Roo_DbManaged {
    
    @OneToMany(mappedBy = "fartArtIdFk")
    private Set<SsiFacturaArticuloRel> SsiArticulo.ssiFacturaArticuloRels;
    
    @ManyToOne
    @JoinColumn(name = "art_cat_id_fk", referencedColumnName = "cat_id", nullable = false)
    private SsiCategoria SsiArticulo.artCatIdFk;
    
    @ManyToOne
    @JoinColumn(name = "art_arum_id_fk", referencedColumnName = "arum_id", nullable = false)
    private SsiArticuloUnidadMedida SsiArticulo.artArumIdFk;
    
    @Column(name = "art_nombre_producto", columnDefinition = "VARCHAR", length = 100)
    private String SsiArticulo.artNombreProducto;
    
    @Column(name = "art_marca", columnDefinition = "VARCHAR", length = 50)
    private String SsiArticulo.artMarca;
    
    @Column(name = "art_descripcion", columnDefinition = "VARCHAR", length = 255)
    private String SsiArticulo.artDescripcion;
    
    @Column(name = "art_cantidad", columnDefinition = "SMALLINT")
    private Short SsiArticulo.artCantidad;
    
    @Column(name = "art_precio_unitario", columnDefinition = "DECIMAL", precision = 10, scale = 2)
    private BigDecimal SsiArticulo.artPrecioUnitario;
    
    @Column(name = "art_subtotal", columnDefinition = "DECIMAL", precision = 10, scale = 2)
    private BigDecimal SsiArticulo.artSubtotal;
    
    @Column(name = "art_imagen", columnDefinition = "VARCHAR", length = 255)
    private String SsiArticulo.artImagen;
    
    public Set<SsiFacturaArticuloRel> SsiArticulo.getSsiFacturaArticuloRels() {
        return ssiFacturaArticuloRels;
    }
    
    public void SsiArticulo.setSsiFacturaArticuloRels(Set<SsiFacturaArticuloRel> ssiFacturaArticuloRels) {
        this.ssiFacturaArticuloRels = ssiFacturaArticuloRels;
    }
    
    public SsiCategoria SsiArticulo.getArtCatIdFk() {
        return artCatIdFk;
    }
    
    public void SsiArticulo.setArtCatIdFk(SsiCategoria artCatIdFk) {
        this.artCatIdFk = artCatIdFk;
    }
    
    public SsiArticuloUnidadMedida SsiArticulo.getArtArumIdFk() {
        return artArumIdFk;
    }
    
    public void SsiArticulo.setArtArumIdFk(SsiArticuloUnidadMedida artArumIdFk) {
        this.artArumIdFk = artArumIdFk;
    }
    
    public String SsiArticulo.getArtNombreProducto() {
        return artNombreProducto;
    }
    
    public void SsiArticulo.setArtNombreProducto(String artNombreProducto) {
        this.artNombreProducto = artNombreProducto;
    }
    
    public String SsiArticulo.getArtMarca() {
        return artMarca;
    }
    
    public void SsiArticulo.setArtMarca(String artMarca) {
        this.artMarca = artMarca;
    }
    
    public String SsiArticulo.getArtDescripcion() {
        return artDescripcion;
    }
    
    public void SsiArticulo.setArtDescripcion(String artDescripcion) {
        this.artDescripcion = artDescripcion;
    }
    
    public Short SsiArticulo.getArtCantidad() {
        return artCantidad;
    }
    
    public void SsiArticulo.setArtCantidad(Short artCantidad) {
        this.artCantidad = artCantidad;
    }
    
    public BigDecimal SsiArticulo.getArtPrecioUnitario() {
        return artPrecioUnitario;
    }
    
    public void SsiArticulo.setArtPrecioUnitario(BigDecimal artPrecioUnitario) {
        this.artPrecioUnitario = artPrecioUnitario;
    }
    
    public BigDecimal SsiArticulo.getArtSubtotal() {
        return artSubtotal;
    }
    
    public void SsiArticulo.setArtSubtotal(BigDecimal artSubtotal) {
        this.artSubtotal = artSubtotal;
    }
    
    public String SsiArticulo.getArtImagen() {
        return artImagen;
    }
    
    public void SsiArticulo.setArtImagen(String artImagen) {
        this.artImagen = artImagen;
    }
    
}
