package com.song.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/8/22.
 */
public class RequestParameterUtils {

    public static Map<String, Object> getParameter(HttpServletRequest request) {
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
        return map;
    }
}
