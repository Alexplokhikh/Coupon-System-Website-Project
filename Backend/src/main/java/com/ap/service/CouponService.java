package com.ap.service;

import com.ap.model.entity.Checkout;
import com.ap.model.entity.Coupon;
import com.ap.model.entity.History;
import com.ap.model.response.ProfileCurrentPurchasesResponse;
import com.ap.repository.CheckoutRepository;
import com.ap.repository.CouponRepository;
import com.ap.repository.HistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

@Service
@Transactional
public class CouponService {

    private CouponRepository couponRepository;
    private CheckoutRepository checkoutRepository;

    private HistoryRepository historyRepository;

    @Autowired
    public CouponService(CouponRepository couponRepository, CheckoutRepository checkoutRepository, HistoryRepository historyRepository) {
        this.couponRepository = couponRepository;
        this.checkoutRepository = checkoutRepository;
        this.historyRepository = historyRepository;
    }

    public Coupon checkoutCoupon(String userEmail, Long couponId) throws Exception {
        Optional<Coupon> coupon = couponRepository.findById(couponId);
        Checkout validateCheckout = checkoutRepository.findByUserEmailAndCouponId(userEmail, couponId);

        if (!coupon.isPresent() || validateCheckout != null || coupon.get().getAmount() <= 0) {
            throw new Exception("coupon doesn't exist or already checked out by user");
        }

        coupon.get().setAmount(coupon.get().getAmount() - 1);
        couponRepository.save(coupon.get());

        Checkout checkout = new Checkout(
                userEmail,
                LocalDate.now().toString(),
                coupon.get().getId()
        );

        checkoutRepository.save(checkout);

        return coupon.get();
    }

    public Boolean checkoutCouponByUser(String userEmail, Long couponId) {
        Checkout validateCheckout = checkoutRepository.findByUserEmailAndCouponId(userEmail, couponId);
        if (validateCheckout != null) {
            return true;
        } else {
            return false;
        }
    }

    public int currentPurchasesCount(String userEmail) {
        return checkoutRepository.findCouponsByUserEmail(userEmail).size();
    }

    public List<ProfileCurrentPurchasesResponse> currentPurchases(String userEmail) throws Exception {
        List<ProfileCurrentPurchasesResponse> profileCurrentPurchasesResponses = new ArrayList<>();
        List<Checkout> checkoutList = checkoutRepository.findCouponsByUserEmail(userEmail);
        List<Long> couponIdList = new ArrayList<>();

        for (Checkout c : checkoutList) {
            couponIdList.add(c.getCouponId());
        }

        List<Coupon> coupons = couponRepository.findCouponsByCouponIds(couponIdList);


        for (Coupon c : coupons) {
            Optional<Checkout> checkout = checkoutList.stream()
                    .filter(x -> x.getCouponId() == c.getId()).findFirst();

            if (checkout.isPresent()) {

                Date d1 = c.getEndDate();
                Date d2 = Date.valueOf(LocalDate.now());

                TimeUnit time = TimeUnit.DAYS;

                long difference = time.convert(d1.getTime() - d2.getTime(),
                        TimeUnit.MILLISECONDS);

                profileCurrentPurchasesResponses.add(new ProfileCurrentPurchasesResponse(c, (int) difference));
            }
        }
        return profileCurrentPurchasesResponses;
    }

    public void removeCoupon (String userEmail, Long couponId) throws Exception {
        Optional<Coupon> coupon = couponRepository.findById(couponId);

        Checkout validateCheckout = checkoutRepository.findByUserEmailAndCouponId(userEmail, couponId);

        if (!coupon.isPresent() || validateCheckout == null) {
            throw new Exception("Coupon doesn't exist, or not checked out by user");
        }

        checkoutRepository.deleteById(validateCheckout.getId());

        Long companyId = coupon.get().getCompanyId();

        History history = new History(
                userEmail,
                validateCheckout.getCheckoutDate(),
                LocalDate.now().toString(),
                coupon.get().getTitle(),
                companyId.toString(),
                coupon.get().getDescription(),
                coupon.get().getImageUrl()
        );

        historyRepository.save(history);
    }

}
