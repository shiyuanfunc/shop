package com.song.service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
/**
 * Created by lenovo on 2017/9/25.
 */
public interface GoodsService  {

    /**
     *   保存商品
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    Map<String,Object> saveGoods(Map<String,Object> map,HttpServletRequest request) throws Exception;

    /**
     *  查询商品
     * @return
     * @throws Exception
     */
    public List<Map<String, Object>> queryGoods() throws Exception;
}
