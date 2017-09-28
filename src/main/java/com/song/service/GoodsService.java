package com.song.service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
/**
 * Created by lenovo on 2017/9/25.
 */
public interface GoodsService  {

    Map<String,Object> saveGoods(Map<String,Object> map,HttpServletRequest request) throws Exception;

    /**
     *  查讯 页面应该显示的内容
     */

    List<Map<String,Object>> queryGoods() throws Exception;
}
