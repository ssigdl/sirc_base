package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiArticulo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssiarticuloes")
@Controller
@RooWebScaffold(path = "ssiarticuloes", formBackingObject = SsiArticulo.class)
public class SsiArticuloController {
}
