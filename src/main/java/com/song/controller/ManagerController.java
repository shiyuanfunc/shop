package com.song.controller;

import com.song.bean.Goods;
import com.song.service.GoodsService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
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
        if ("success".equals(String.valueOf(rtMap.get("status")))){
            return rtMap;
        }else {
            rtMap.put("status","error");
            rtMap.put("msg","上传失败");
            return rtMap;
        }
    }

    /**
     *   加载商品类别 ajax
     * @return
     * @throws Exception
     */
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

    /**
     *
     *  文件下载
     * @return
     * @throws Exception
     */
    //@RequestMapping("/downlaod")
    public ResponseEntity<byte[]> downloadGods() throws Exception{
        String path = "";
        File file = new File(path);
        String fileName = new String("你好.xml".getBytes("utf-8"),"iso-8859-1");
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setContentDispositionFormData("attachment", fileName);
        httpHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        return  new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                httpHeaders, HttpStatus.CREATED);
    }


    /**
     *  导出商品  表格
     */


    /**
     *  生成验证码
     * @param response
     * @param request
     */
    @RequestMapping(value="getGifCode",method= RequestMethod.GET)
    public void getGifCode(HttpServletResponse response,HttpServletRequest request) {
        try {
            response.setHeader("Pragma", "No-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            response.setContentType("image/gif");
            /**
             * gif格式动画验证码
             * 宽，高，位数。
             */

        }catch(Exception e){

        }
    }
}
