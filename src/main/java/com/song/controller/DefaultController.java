package com.song.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/8/22.
 */
@Controller
@Scope(value = "prototype")
@RequestMapping(value = "/view")
public class DefaultController {

    @RequestMapping(value = "/{defaultName}")
    public String defaultController(
            @PathVariable String defaultName) {
        return defaultName;
    }

    @RequestMapping("/{f}/{ff}")
    public String deaultCon(@PathVariable("f") String f,@PathVariable("ff") String ff){
        return f +"/"+ ff;
    }
}
