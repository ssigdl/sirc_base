// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ssigdl.sirc.web;

import com.ssigdl.sirc.domain.SsiArticulo;
import com.ssigdl.sirc.domain.SsiArticuloUnidadMedida;
import com.ssigdl.sirc.web.SsiArticuloUnidadMedidaController;
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

privileged aspect SsiArticuloUnidadMedidaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SsiArticuloUnidadMedidaController.create(@Valid SsiArticuloUnidadMedida ssiArticuloUnidadMedida, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ssiArticuloUnidadMedida);
            return "ssiarticulounidadmedidas/create";
        }
        uiModel.asMap().clear();
        ssiArticuloUnidadMedida.persist();
        return "redirect:/ssiarticulounidadmedidas/" + encodeUrlPathSegment(ssiArticuloUnidadMedida.getArumId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SsiArticuloUnidadMedidaController.createForm(Model uiModel) {
        populateEditForm(uiModel, new SsiArticuloUnidadMedida());
        return "ssiarticulounidadmedidas/create";
    }
    
    @RequestMapping(value = "/{arumId}", produces = "text/html")
    public String SsiArticuloUnidadMedidaController.show(@PathVariable("arumId") Integer arumId, Model uiModel) {
        uiModel.addAttribute("ssiarticulounidadmedida", SsiArticuloUnidadMedida.findSsiArticuloUnidadMedida(arumId));
        uiModel.addAttribute("itemId", arumId);
        return "ssiarticulounidadmedidas/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SsiArticuloUnidadMedidaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ssiarticulounidadmedidas", SsiArticuloUnidadMedida.findSsiArticuloUnidadMedidaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) SsiArticuloUnidadMedida.countSsiArticuloUnidadMedidas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ssiarticulounidadmedidas", SsiArticuloUnidadMedida.findAllSsiArticuloUnidadMedidas(sortFieldName, sortOrder));
        }
        return "ssiarticulounidadmedidas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SsiArticuloUnidadMedidaController.update(@Valid SsiArticuloUnidadMedida ssiArticuloUnidadMedida, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ssiArticuloUnidadMedida);
            return "ssiarticulounidadmedidas/update";
        }
        uiModel.asMap().clear();
        ssiArticuloUnidadMedida.merge();
        return "redirect:/ssiarticulounidadmedidas/" + encodeUrlPathSegment(ssiArticuloUnidadMedida.getArumId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{arumId}", params = "form", produces = "text/html")
    public String SsiArticuloUnidadMedidaController.updateForm(@PathVariable("arumId") Integer arumId, Model uiModel) {
        populateEditForm(uiModel, SsiArticuloUnidadMedida.findSsiArticuloUnidadMedida(arumId));
        return "ssiarticulounidadmedidas/update";
    }
    
    @RequestMapping(value = "/{arumId}", method = RequestMethod.DELETE, produces = "text/html")
    public String SsiArticuloUnidadMedidaController.delete(@PathVariable("arumId") Integer arumId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SsiArticuloUnidadMedida ssiArticuloUnidadMedida = SsiArticuloUnidadMedida.findSsiArticuloUnidadMedida(arumId);
        ssiArticuloUnidadMedida.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ssiarticulounidadmedidas";
    }
    
    void SsiArticuloUnidadMedidaController.populateEditForm(Model uiModel, SsiArticuloUnidadMedida ssiArticuloUnidadMedida) {
        uiModel.addAttribute("ssiArticuloUnidadMedida", ssiArticuloUnidadMedida);
        uiModel.addAttribute("ssiarticuloes", SsiArticulo.findAllSsiArticuloes());
    }
    
    String SsiArticuloUnidadMedidaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
