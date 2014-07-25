package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiCategoriaTemporal;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssicategoriatemporals")
@Controller
@RooWebScaffold(path = "ssicategoriatemporals", formBackingObject = SsiCategoriaTemporal.class)
public class SsiCategoriaTemporalController {
}
