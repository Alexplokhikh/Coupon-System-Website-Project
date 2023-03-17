package com.ap.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;

@Entity
@Table(name = "review")
@Data
public class Review {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "user_email")
    private String userEmail;
    @Column(name = "date")
    private Date date;
    @Column(name = "rating")
    private double rating;
    @Column(name = "coupon_id")
    private Long couponId;
    @Column(name = "review_description")
    private String reviewDescription;
}
