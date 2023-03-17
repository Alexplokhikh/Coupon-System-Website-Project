package com.ap.model.dto;

import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;

import java.util.Set;

@Getter
@Builder
@EqualsAndHashCode(of = "uuid")
public class CustomerDto {
    private String uuid;
    private String firstName;
    private String lastName;
    private String email;
    Set<CouponDto> coupons;
}
