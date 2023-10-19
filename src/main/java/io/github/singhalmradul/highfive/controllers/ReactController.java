package io.github.singhalmradul.highfive.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReactController {

    private static final String INDEX = "index";

    @RequestMapping("/")
    public String index() {
        return INDEX;

    }

    @RequestMapping("/home")
    public String home() {
        return INDEX;
    }

    @RequestMapping("/chat")
    public String chat() {
        return INDEX;
    }
}
