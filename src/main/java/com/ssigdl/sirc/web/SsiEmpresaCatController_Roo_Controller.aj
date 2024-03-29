// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.web;

import com.ssigdl.sirc.domain.SsiEmpresa;
import com.ssigdl.sirc.domain.SsiEmpresaCat;
import com.ssigdl.sirc.web.SsiEmpresaCatController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect SsiEmpresaCatController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SsiEmpresaCatController.create(@Valid SsiEmpresaCat ssiEmpresaCat, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ssiEmpresaCat);
            return "ssiempresacats/create";
        }
        uiModel.asMap().clear();
        ssiEmpresaCat.persist();
        return "redirect:/ssiempresacats/" + encodeUrlPathSegment(ssiEmpresaCat.getEmpcId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SsiEmpresaCatController.createForm(Model uiModel) {
        populateEditForm(uiModel, new SsiEmpresaCat());
        return "ssiempresacats/create";
    }
    
    @RequestMapping(value = "/{empcId}", produces = "text/html")
    public String SsiEmpresaCatController.show(@PathVariable("empcId") Integer empcId, Model uiModel) {
        uiModel.addAttribute("ssiempresacat", SsiEmpresaCat.findSsiEmpresaCat(empcId));
        uiModel.addAttribute("itemId", empcId);
        return "ssiempresacats/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SsiEmpresaCatController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ssiempresacats", SsiEmpresaCat.findSsiEmpresaCatEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) SsiEmpresaCat.countSsiEmpresaCats() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ssiempresacats", SsiEmpresaCat.findAllSsiEmpresaCats(sortFieldName, sortOrder));
        }
        return "ssiempresacats/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SsiEmpresaCatController.update(@Valid SsiEmpresaCat ssiEmpresaCat, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ssiEmpresaCat);
            return "ssiempresacats/update";
        }
        uiModel.asMap().clear();
        ssiEmpresaCat.merge();
        return "redirect:/ssiempresacats/" + encodeUrlPathSegment(ssiEmpresaCat.getEmpcId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{empcId}", params = "form", produces = "text/html")
    public String SsiEmpresaCatController.updateForm(@PathVariable("empcId") Integer empcId, Model uiModel) {
        populateEditForm(uiModel, SsiEmpresaCat.findSsiEmpresaCat(empcId));
        return "ssiempresacats/update";
    }
    
    @RequestMapping(value = "/{empcId}", method = RequestMethod.DELETE, produces = "text/html")
    public String SsiEmpresaCatController.delete(@PathVariable("empcId") Integer empcId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SsiEmpresaCat ssiEmpresaCat = SsiEmpresaCat.findSsiEmpresaCat(empcId);
        ssiEmpresaCat.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ssiempresacats";
    }
    
    void SsiEmpresaCatController.populateEditForm(Model uiModel, SsiEmpresaCat ssiEmpresaCat) {
        uiModel.addAttribute("ssiEmpresaCat", ssiEmpresaCat);
        uiModel.addAttribute("ssiempresas", SsiEmpresa.findAllSsiEmpresas());
    }
    
    String SsiEmpresaCatController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
