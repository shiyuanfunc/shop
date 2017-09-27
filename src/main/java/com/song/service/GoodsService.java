package com.song.service;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;
/**
 * Created by lenovo on 2017/9/25.
 */
public interface GoodsService  {

    Map<String,Object> saveGoods(Map<String,Object> map,HttpServletRequest request) throws Exception;
}
