package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiTelefonoCat;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssitelefonocats")
@Controller
@RooWebScaffold(path = "ssitelefonocats", formBackingObject = SsiTelefonoCat.class)
public class SsiTelefonoCatController {
}
