package com.changzer.wiki.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *@description TODO
 *@author tq
 *@createDate 2022/12/11
 *@version 1.0
 */
@Controller
public class IndexController {
    @GetMapping("/")
    public String hello(){
        return "redirect:/index.html";
    }
}
