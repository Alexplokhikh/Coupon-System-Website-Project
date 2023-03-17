package com.ap.model.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "checkout")
@Data
public class Checkout {

    public Checkout() {
    }

    public Checkout(String userEmail, String checkoutDate, Long couponId) {
        this.userEmail = userEmail;
        this.checkoutDate = checkoutDate;
        this.couponId = couponId;

    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "user_email")
    private String userEmail;
    @Column(name = "checkout_date")
    private String checkoutDate;
    @Column(name = "coupon_id")
    private Long couponId;


}
