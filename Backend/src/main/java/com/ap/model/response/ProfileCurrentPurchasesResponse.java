package com.ap.model.response;

import com.ap.model.entity.Coupon;
import lombok.Data;

@Data
public class ProfileCurrentPurchasesResponse {

    private Coupon coupon;
    private int daysLeft;

    public ProfileCurrentPurchasesResponse(Coupon coupon, int daysLeft) {
        this.coupon = coupon;
        this.daysLeft = daysLeft;
    }

}
