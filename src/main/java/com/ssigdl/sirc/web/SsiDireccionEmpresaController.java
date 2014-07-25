package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiDireccionEmpresa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssidireccionempresas")
@Controller
@RooWebScaffold(path = "ssidireccionempresas", formBackingObject = SsiDireccionEmpresa.class)
public class SsiDireccionEmpresaController {
}
