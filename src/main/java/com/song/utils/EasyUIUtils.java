package com.song.utils;

import java.util.List;

/**
 * Created by Administrator on 2017/8/29.
 */
public class EasyUIUtils<T> {

    private List<T> rows;
    private int total;

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
