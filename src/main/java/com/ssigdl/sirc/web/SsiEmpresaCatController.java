package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiEmpresaCat;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssiempresacats")
@Controller
@RooWebScaffold(path = "ssiempresacats", formBackingObject = SsiEmpresaCat.class)
public class SsiEmpresaCatController {
}
