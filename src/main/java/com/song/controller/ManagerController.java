package com.song.controller;

import com.song.service.GoodsService;
import com.song.utils.RequestParameterUtils;
import com.song.utils.RequestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.*;

/**
 * Created by Administrator on 2017/9/12.
 */

@Controller
@Scope("prototype")
@RequestMapping("/managerr")
public class ManagerController {

    @Autowired
    private GoodsService goodsService;


    @RequestMapping("/upload")
    public @ResponseBody
    Map<String,Object> uploadPhoto(@RequestParam("photoFile") MultipartFile file ) throws Exception{
        UUID uuid = UUID.randomUUID();
        String fileName = file.getOriginalFilename();
        String newFileName = uuid.toString().replace("-","")+fileName.substring(fileName.lastIndexOf("."));
        HttpServletRequest request = RequestUtils.getHttpServletRequest();
        Map<String, Object> sendMap = RequestParameterUtils.getParameter(request);
        String realPath = request.getSession().getServletContext().getRealPath("/upload");
        sendMap.put("realPath", realPath);
        sendMap.put("newFileName",newFileName);
        Map<String, Object> map = goodsService.saveGoods(sendMap , request);
        //return map;
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

    /**
     *   导出Excel
     */
    @RequestMapping("/downloadExcel")
    public String downloadExcel() throws Exception{
        System.out.println("-----------------down----------");
            return "downexcelJXL";
    }

    /**
     *  异步返回 echart 数据
     */
    @RequestMapping("/getData")
    public @ResponseBody Map<String,Object> getJson() throws Exception{

        Map<String,Object> map = new HashMap<>();
        List<String> list = new ArrayList<>();
        list.add("衬衫");
        list.add("羊毛衫");
        list.add("雪纺衫");
        list.add("裤子");
        list.add("高跟鞋");
        list.add("袜子");
        map.put("categories",list);

        List<Integer> list1 = new ArrayList<>();

        list1.add(50);
        list1.add(20);
        list1.add(36);
        list1.add(10);
        list1.add(10);
        list1.add(20);
        map.put("data",list1);

        return map;
    }
}
