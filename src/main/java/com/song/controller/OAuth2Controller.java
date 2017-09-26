package com.song.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lenovo on 2017/9/26.
 */
@Controller
@Scope("prototype")
@RequestMapping("/wechat")
public class OAuth2Controller {

    public String weChat() throws Exception{
        return "";
    }
}
