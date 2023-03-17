package com.ap.service;

import com.ap.model.entity.Review;
import com.ap.model.request.ReviewRequest;
import com.ap.repository.CouponRepository;
import com.ap.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;

import java.sql.Date;
import java.time.LocalDate;

@Service
@Transactional
public class ReviewService {

    private ReviewRepository reviewRepository;

    @Autowired
    public ReviewService(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    public void postReview(String userEmail, ReviewRequest reviewRequest) throws Exception {
        Review validateReview = reviewRepository.findByUserEmailAndCouponId(userEmail, reviewRequest.getCouponId());

        if (validateReview != null) {
            throw new Exception("Review already created!");
        }

        Review review = new Review();
        review.setCouponId(reviewRequest.getCouponId());
        review.setRating(reviewRequest.getRating());
        review.setUserEmail(userEmail);

        if (reviewRequest.getReviewDescription().isPresent()) {
            review.setReviewDescription(reviewRequest.getReviewDescription().map(
                    Object::toString
            ).orElse(null));
        }
        review.setDate(Date.valueOf(LocalDate.now()));
        reviewRepository.save(review);
    }

    public boolean userReviewListed(String userEmail, Long couponId) {
        Review validateReview = reviewRepository.findByUserEmailAndCouponId(userEmail, couponId);
        if (validateReview != null) {
            return true;
        } else {
            return false;
        }
    }
}
