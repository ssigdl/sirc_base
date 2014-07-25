package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiArticuloUnidadMedida;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssiarticulounidadmedidas")
@Controller
@RooWebScaffold(path = "ssiarticulounidadmedidas", formBackingObject = SsiArticuloUnidadMedida.class)
public class SsiArticuloUnidadMedidaController {
}
