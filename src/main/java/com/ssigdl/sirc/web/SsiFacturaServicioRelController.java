package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiFacturaServicioRel;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssifacturaserviciorels")
@Controller
@RooWebScaffold(path = "ssifacturaserviciorels", formBackingObject = SsiFacturaServicioRel.class)
public class SsiFacturaServicioRelController {
}
