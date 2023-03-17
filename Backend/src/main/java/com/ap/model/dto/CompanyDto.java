package com.ap.model.dto;

import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Set;

@Data
@Builder
@EqualsAndHashCode(of = "uuid")
public class CompanyDto {
    private String uuid;
    private String name;
    private String email;
    Set<CouponDto> coupons;
}
