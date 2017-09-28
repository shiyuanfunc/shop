package com.song.controller;

import com.song.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2017/9/28.
 */
@Controller
@Scope("prototype")
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/showPage")
    public List<Map<String,Object>> showPage() throws Exception{

        return null;
    }
}
