package com.song.bean;

import org.springframework.stereotype.Component;

/**
 * Created by lenovo on 2017/9/26.
 */
@Component
public class Goods {
    private Integer id;
    private String goodName;
    private String goodPrice;
    private String goodDesc;
    private String goodType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public String getGoodPrice() {
        return goodPrice;
    }

    public void setGoodPrice(String goodPrice) {
        this.goodPrice = goodPrice;
    }

    public String getGoodDesc() {
        return goodDesc;
    }

    public void setGoodDesc(String goodDesc) {
        this.goodDesc = goodDesc;
    }

    public String getGoodType() {
        return goodType;
    }

    public void setGoodType(String goodType) {
        this.goodType = goodType;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", goodName='" + goodName + '\'' +
                ", goodPrice='" + goodPrice + '\'' +
                ", goodDesc='" + goodDesc + '\'' +
                ", goodType='" + goodType + '\'' +
                '}';
    }
}
