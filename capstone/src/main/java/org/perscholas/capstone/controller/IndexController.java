package org.perscholas.capstone.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.*;

@Slf4j
@Controller
public class IndexController {

    @GetMapping("/")
    public ModelAndView index(){
        ModelAndView response= new ModelAndView("index");
        return response;

    }

}
