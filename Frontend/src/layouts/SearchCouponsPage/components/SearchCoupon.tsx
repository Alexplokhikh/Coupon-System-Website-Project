import React from "react";
import CouponModel from "../../../models/CouponModel";
import {Link} from "react-router-dom";

export const SearchCoupon: React.FC<{ coupon:CouponModel }> = (props) => {



    return (

        <div className="card mt-3 shadow p-3 mb-3 bg-body rounded">
            <div className="row g-0">
                <div className="col-md-2">
                    <div className="d-none d-lg-block">
                        {props.coupon.imageUrl?
                            <img src={props.coupon.imageUrl}
                                 width="125"
                                 height="195"
                                 alt="Coupon"
                            /> :
                            <img src={require("../../../Images/CouponImages/image-1.jpg")}
                                 width="125"
                                 height="196"
                                 alt="Coupon"
                            />
                        }
                    </div>
                    <div className="d-lg-none d-flex justify-content-center align-items-center">
                        {props.coupon.imageUrl?
                            <img src={props.coupon.imageUrl}
                                 width="125"
                                 height="195"
                                 alt="Coupon"
                            /> :
                            <img src={require("../../../Images/CouponImages/image-1.jpg")}
                                 width="125"
                                 height="196"
                                 alt="Coupon"
                            />
                        }
                    </div>
                </div>
                <div className="col-md-6">
                    <div className="card-body">
                        <h5 className="card-title">
                            {props.coupon.companyId}
                        </h5>
                        <h4>
                            {props.coupon.title}
                        </h4>
                        <p className="card-text">
                            {props.coupon.description}
                        </p>
                    </div>
                </div>
                <div className="col-md-4 d-flex justify-content-center align-items-center">
                    <Link className="btn btn-md main-color text-white" to={`/checkout/${props.coupon.id}`}>
                        View Details
                    </Link>
                </div>
            </div>
        </div>

    );
};