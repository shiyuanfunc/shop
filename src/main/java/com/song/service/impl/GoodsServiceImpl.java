package com.song.service.impl;

import com.song.bean.Goods;
import com.song.service.GoodsService;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by lenovo on 2017/9/25.
 */
@Service
public class GoodsServiceImpl implements GoodsService{

    /**
     * 商品上传
     * @param map  file  文件对象
     *              entity  商品信息
     * @param request
     * @return
     * @throws Exception
     */
    @Override
    public Map<String, Object> saveGoods(Map<String,Object> map , HttpServletRequest request) throws Exception {
        MultipartFile file = (MultipartFile) map.get("file");
        Goods goods = (Goods) map.get("entity");
        String ext = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        String realPath = request.getSession().getServletContext().getRealPath("/upload");
        File f = new File(realPath);
        if (!f.exists()){
            f.mkdirs();
        }
        File ff = new File(realPath,goods.getGoodName()+ext);
        if (!ff.exists()){
            ff.createNewFile();
        }
        //file.transferTo(f);  //文件夹可以上传
        //copyInputStreamToFile 需要一个文件对象 不是文件夹
        FileUtils.copyInputStreamToFile(file.getInputStream(),ff);
       // FileUtils.copyFile((File) file,f);

        Map<String,Object> rtMap = new HashMap<>();
        rtMap.put("status","success");
        rtMap.put("msg","上传成功");
        return rtMap;
    }
}
