package com.ssigdl.sirc.web;
import com.ssigdl.sirc.domain.SsiCheque;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ssicheques")
@Controller
@RooWebScaffold(path = "ssicheques", formBackingObject = SsiCheque.class)
public class SsiChequeController {
}
