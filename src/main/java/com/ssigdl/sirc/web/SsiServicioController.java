package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiServicio;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssiservicios")
@Controller
@RooWebScaffold(path = "ssiservicios", formBackingObject = SsiServicio.class)
public class SsiServicioController {
}
