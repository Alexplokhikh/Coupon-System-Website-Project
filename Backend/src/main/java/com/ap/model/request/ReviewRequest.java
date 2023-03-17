package com.ap.model.request;

import lombok.Data;

import java.util.Optional;

@Data
public class ReviewRequest {

    private double rating;
    private Long couponId;
    private Optional<String> reviewDescription;

}
