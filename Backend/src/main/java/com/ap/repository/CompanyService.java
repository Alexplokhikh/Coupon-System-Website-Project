package com.ap.repository;

import com.ap.model.entity.Coupon;
import com.ap.requestmodels.AddCouponRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CompanyService {
    private CouponRepository couponRepository;

    @Autowired
    public CompanyService(CouponRepository couponRepository) {
        this.couponRepository = couponRepository;
    }

    public void postCoupon(AddCouponRequest addCouponRequest) {
        Coupon coupon = new Coupon();

        coupon.setTitle(addCouponRequest.getTitle());
        coupon.setCompanyId(addCouponRequest.getCompanyId());
        coupon.setDescription(addCouponRequest.getDescription());
        coupon.setCategory(addCouponRequest.getCategory());
        coupon.setAmount(addCouponRequest.getAmount());
        coupon.setStartDate(addCouponRequest.getStartDate());
        coupon.setEndDate(addCouponRequest.getEndDate());
        coupon.setImageUrl(addCouponRequest.getImg());
        coupon.setPrice(addCouponRequest.getPrice());

        couponRepository.save(coupon);
    }
}
