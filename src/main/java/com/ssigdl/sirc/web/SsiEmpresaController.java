package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiEmpresa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssiempresas")
@Controller
@RooWebScaffold(path = "ssiempresas", formBackingObject = SsiEmpresa.class)
public class SsiEmpresaController {
}
