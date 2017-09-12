package com.song.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/25.
 */
public class SplitPageUtils {

    public static Map<String, Object> getParam(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>();
        Map<String, String[]> parameterMap = request.getParameterMap();
        // 遍历map
        for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
            if (entry.getValue().length == 1) {
                map.put(entry.getKey(), entry.getValue()[0]);
            } else {
                map.put(entry.getKey(), entry.getValue());
            }
        }

        // 如果参数中包含当前页page或者显示条数pageSize,则认为这个请求会进行分页
        Integer page = map.get("page") == null ? 1 : Integer.parseInt(String.valueOf(map.get("page")));
        Integer pageSize = map.get("pageSize")==null ? 3 : Integer.parseInt(String.valueOf(map.get("pageSize")));
        // 计算当前页的开始start和结束end
        int start = (page - 1) * pageSize + 1;
        int end = page * pageSize;
        map.put("start", start);
        map.put("end", end);
        map.put("page", page);
        map.put("pageSize", pageSize);
        return map;
    }
}