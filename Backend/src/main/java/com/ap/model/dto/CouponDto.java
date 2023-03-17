package com.ap.model.dto;

import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.sql.Date;


@Data
@Builder
@EqualsAndHashCode(of = "uuid")
public class CouponDto {
    private long id;
    private String uuid;
    private long companyId;
    private String category;
    private String title;
    private String description;
    private Date startDate;
    private Date endDate;
    private int amount;
    private BigDecimal price;
    private String imageUrl;

}
