package com.youngball.stage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="fmtest")
public class FreeMarkerTestController {
	
	@RequestMapping(value="/welcome",method={RequestMethod.GET}) 
    public ModelAndView getFirstPage(HttpServletRequest request) {
                //welcom就是视图的名称（welcom.ftl）
        ModelAndView mv = new ModelAndView("welcom");
        mv.addObject("name", "My First Spring Mvc");
        return mv;
    }
	
	
}
