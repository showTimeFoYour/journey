package com.journey.abc.pojo.vo;

import java.util.List;

/**
 * User: Frogzec
 * Date: 2017/11/29
 * Time: 9:25
 * Version:V1.0
 */
public class TbSearchHotelResult {

    private long recordCount;
    private int totalPages;
    private List<TbSearchHotelCustom> hotelList;

    public long getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(long recordCount) {
        this.recordCount = recordCount;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public List<TbSearchHotelCustom> getHotelList() {
        return hotelList;
    }

    public void setHotelList(List<TbSearchHotelCustom> hotelList) {
        this.hotelList = hotelList;
    }
}
