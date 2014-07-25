package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiFactura;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssifacturas")
@Controller
@RooWebScaffold(path = "ssifacturas", formBackingObject = SsiFactura.class)
public class SsiFacturaController {
}
