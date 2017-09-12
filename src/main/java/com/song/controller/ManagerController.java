package com.song.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;

/**
 * Created by Administrator on 2017/9/12.
 */

@Controller
@Scope("prototype")
@RequestMapping("/manager")
public class ManagerController {

    @Autowired
    //private GoodsService goodsService;


    @RequestMapping("/upload")
    public @ResponseBody
    Map<String,Object> uploadPhoto(@RequestParam("photoFile")MultipartFile file) throws Exception{
        /*HttpServletRequest request = RequestUtils.getHttpServletRequest();
        Map<String, Object> sendMap = RequestParameterUtils.getParameter(request);
        String realPath = request.getSession().getServletContext().getRealPath("/upload");
        UUID uuid = UUID.randomUUID();
        String fileName = file.getOriginalFilename();
        String newFileName = uuid.toString().replace("-","")+fileName.substring(fileName.lastIndexOf("."));
        sendMap.put("realPath", realPath);
        sendMap.put("newFileName",newFileName);
        //Map<String, Object> map = goodsService.saveGoods(sendMap);
        //return map;*/
        return null;
    }

    @RequestMapping("/combobox")
    public @ResponseBody
    List<Map<String,Object>> combobox()throws Exception{
        List<Map<String,Object>> list = new ArrayList<>();
        Map<String,Object> map = new HashMap<>();
        map.put("id",1);
        map.put("text","家具");
        list.add(map);
        Map<String,Object> map2 = new HashMap<>();
        map2.put("id",2);
        map2.put("text","电器");
        list.add(map2);
        return list;
    }
}
