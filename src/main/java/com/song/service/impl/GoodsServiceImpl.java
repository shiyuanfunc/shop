package com.song.service.impl;

import com.song.bean.Goods;
import com.song.service.GoodsService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.Map;

/**
 * Created by lenovo on 2017/9/25.
 */
@Service
public class GoodsServiceImpl implements GoodsService{

    @Override
    public Map<String, Object> saveGoods(Map<String,Object> map) throws Exception {
        MultipartFile file = (MultipartFile) map.get("file");
        Goods goods = (Goods) map.get("entity");
        System.out.println(goods.toString());
        return null;
    }
}
