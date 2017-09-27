package com.song.controller;

import com.song.bean.Goods;
import com.song.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
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

    /**
     *  上传商品图片信息
      */
    @RequestMapping("/upload")
    public @ResponseBody
    Map<String,Object> uploadPhoto(@RequestParam("photoFile") MultipartFile file , Goods goods , HttpServletRequest request) throws Exception{
        String fileName = file.getOriginalFilename();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String newFileName = simpleDateFormat.format(new Date());
        for(int i =0 ; i < 3 ; i++){
            Random random = new Random();
            int i1 = random.nextInt(9);
            newFileName+=i1;
        }
        goods.setGoodName(newFileName);
        Map<String,Object> map = new HashMap<>();
        map.put("file",file);
        map.put("entity",goods);
        Map<String, Object> rtMap = goodsService.saveGoods(map,request);
        return null;
    }

    @RequestMapping("/combobox")
    public @ResponseBody
    List<Map<String,Object>> combobox()throws Exception{
        System.out.println("--------++++++++++++++");
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
