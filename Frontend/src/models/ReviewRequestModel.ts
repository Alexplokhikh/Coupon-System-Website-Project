class ReviewRequestModel {
    rating: number;
    couponId: number;
    reviewDescription?: string;


    constructor(rating: number, couponId: number, reviewDescription: string) {
        this.rating = rating;
        this.couponId = couponId;
        this.reviewDescription = reviewDescription;
    }
}

export default ReviewRequestModel;