package org.kustova.refrigerators.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.kustova.refrigerators.utils.Constants.*;

@Controller
@RequestMapping(value = {URL, URL_INDEX})
public class MainController {
    @GetMapping(URL_OPERATOR)
    public String operator() {
        return OPERATOR;
    }

    @GetMapping(URL_INDEX)
    public String index() {
        return INDEX;
    }

    @GetMapping(URL_LOGIN)
    public String login() {
        return LOGIN;
    }
}
