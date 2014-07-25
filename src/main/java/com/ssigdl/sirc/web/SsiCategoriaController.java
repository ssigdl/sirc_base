package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiCategoria;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssicategorias")
@Controller
@RooWebScaffold(path = "ssicategorias", formBackingObject = SsiCategoria.class)
public class SsiCategoriaController {
}
