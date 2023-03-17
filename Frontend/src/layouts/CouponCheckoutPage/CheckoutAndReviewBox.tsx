import React from "react";
import CouponModel from "../../models/CouponModel";
import {Button} from "reactstrap";
import {Link} from "react-router-dom";
import {LeaveReview} from "../Utils/LeaveReview";

export const CheckoutAndReviewBox: React.FC<{
    coupon: CouponModel | undefined, mobile: boolean,
    currentCheckoutsCount: number, isAuthenticated: any, isCheckedOut: boolean,
    checkoutBook: any, isReviewLeft: boolean; submitReview:any}> = (props) => {

    function buttonRender() {
        if (props.isAuthenticated) {
            if (!props.isCheckedOut) {
                return (
                    <Button onClick={() => props.checkoutBook()} className="btn btn-success btn-lg">Checkout</Button>)
            } else if (props.isCheckedOut) {
                return (<p><b>You already own this coupon, Enjoy!</b></p>)
            }
        }
        return (<Link to={'/login'} className="btn btn-success btn-lg">Sign In</Link>)
    }

    function reviewRender() {
        if (props.isAuthenticated && !props.isReviewLeft) {
            return (
                <p>
                    <LeaveReview submitReview={props.submitReview}/>
                </p>
            )
        } else if (props.isAuthenticated && props.isReviewLeft) {
            return (
                <p>
                    <b>
                        Thank you for your review!
                    </b>
                </p>
            )
        }
        return (
            <div>
                <hr/>
                <p>
                    Sign in to be able to leave a review.
                </p>
            </div>)
    }

    return (
        <div className={props.mobile ? "card d-flex mt-5" : "card col-3 container d-flex mb-5"}>
            <div className="card-body container">
                <div className="mt-3">
                    <p>
                        <b>{props.currentCheckoutsCount} </b>
                        coupons checked out
                    </p>
                    <hr/>
                    {props.coupon && props.coupon.amount && props.coupon.amount > 0 ?
                        <h4 className="text-success">
                            Available
                        </h4>
                        :
                        <h4 className="text-danger">
                            Wait List
                        </h4>
                    }
                    <div className="row">
                        <p className="col-6 lead">
                            <b>{props.coupon?.amount} </b>
                            Amount (Copies)
                        </p>
                        <p className="col-6 lead">
                            <b>{props.coupon?.amount} </b>
                            Available
                        </p>
                    </div>
                </div>
                {buttonRender()}
                <hr/>
                <p className="mt-3">
                    This number can change until placing order has been complete
                </p>
                {reviewRender()}
            </div>
        </div>
    )
};