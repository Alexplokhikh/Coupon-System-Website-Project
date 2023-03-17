import CouponModel from "./CouponModel";

class ProfileCurrentPurchases {
    coupon: CouponModel;
    daysLeft: number;

    constructor(coupon: CouponModel, daysLeft: number) {
        this.coupon = coupon;
        this.daysLeft = daysLeft;
    }
}

export default ProfileCurrentPurchases;