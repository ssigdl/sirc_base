package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiFacturaArticuloRel;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssifacturaarticulorels")
@Controller
@RooWebScaffold(path = "ssifacturaarticulorels", formBackingObject = SsiFacturaArticuloRel.class)
public class SsiFacturaArticuloRelController {
}
