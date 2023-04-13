package com.ap.requestmodels;

import lombok.Data;

import java.math.BigDecimal;
import java.sql.Date;

@Data
public class AddCouponRequest {

    private String title;
    private long companyId;
    private String description;
    private int amount;
    private String category;
    private Date startDate;
    private Date endDate;
    private BigDecimal price;
    private String img;

}
