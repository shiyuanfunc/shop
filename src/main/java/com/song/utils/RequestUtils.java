package com.song.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2017/8/21.
 */
public class RequestUtils {

    private static ThreadLocal<HttpServletRequest> tt = new ThreadLocal<>();
    private static ThreadLocal<HttpServletResponse> ttResponse = new ThreadLocal<>();

    public static void setHttpServletRequest(HttpServletRequest request) {
        tt.set(request);
    }

    public static HttpServletRequest getHttpServletRequest() {
        HttpServletRequest httpServletRequest = tt.get();
        return httpServletRequest;
    }

    public static void setHttpServletResponse(HttpServletResponse response) {
        ttResponse.set(response);
    }

    public static HttpServletResponse getHttpServletResponse() {
        HttpServletResponse response = ttResponse.get();
        return response;
    }

}
