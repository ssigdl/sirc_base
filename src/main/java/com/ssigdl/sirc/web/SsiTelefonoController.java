package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiTelefono;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssitelefonoes")
@Controller
@RooWebScaffold(path = "ssitelefonoes", formBackingObject = SsiTelefono.class)
public class SsiTelefonoController {
}
