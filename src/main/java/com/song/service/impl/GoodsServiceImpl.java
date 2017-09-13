package com.song.service.impl;
import com.song.dao.GoodsDao;
import com.song.service.GoodsService;
import org.springframework.stereotype.Service;
import java.io.File;
import java.util.Map;
/**
 * Created by Administrator on 2017/9/12.
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    //@Autowired
    private GoodsDao goodsDao;

    @Override
    public Map<String, Object> saveGoods(Map<String,Object> map) throws Exception {
    
        String realPath = String.valueOf(map.get("realPath"));
        String newFileName = String.valueOf(map.get("newFileName"));
        File file = new File(realPath,newFileName);
        if (!file.exists()){
            file.mkdirs();
        }

        //先把信息保存到数据库在 把信息保存到本地
        goodsDao.saveGoods();
        return null;
    }
}
