import {Link} from "react-router-dom";
import React from "react";
import {useSelector} from "react-redux";
import {RootState} from "../../../Auth/store/store";

export const Heros = () => {

    const token = useSelector((state: RootState) => state.auth.token)

    return (
        <div>
            <div className="d-none d-lg-block">
                <div className="row g-0 mt-5">
                    <div className="col-sm-6 col-md-6">
                        <div className="col-image-left"></div>
                    </div>

                    <div className="col-4 col-md-4 container d-flex justify-content-center align-items-center">
                        <div className="ml-2">
                            <h1>Where were you shopping lately..?</h1>
                            <p className="lead">
                                Our team provides the best and hottest deals out in the market!
                                whether it is your closest meal, your latest device purchase or your next trip,
                                we will be able to lower your costs and add extra benefits for you!
                            </p>
                            {token ?
                                <Link type="button" className="btn main-color btn-lg text-white"
                                      to='search'>Explore top Coupons</Link>
                                :
                                <Link type="button" className="btn main-color btn-lg text-white"
                                      to='/login'>Login</Link>
                            }
                        </div>
                    </div>
                </div>
                <div className="row g-0">
                    <div className="col-4 col-md-4 container d-flex justify-content-center align-items-center">
                        <div className="ml-2">
                            <h1>Our collection is always changing!</h1>
                            <p className="lead">
                                Try to check in daily as our collection is always changing!
                                we tend to collaborate with the most requested partners in the market!
                                we are diligent about our coupon selection,
                                and our members are always our top priority!
                            </p>
                        </div>
                    </div>
                    <div className="col-sm-6 col-md-6">
                        <div className="col-image-right"></div>
                    </div>
                </div>
            </div>

            {/*Mobile*/}
            <div className="d-lg-none">
                <div className="containter">
                    <div className="m-2">
                        <div className="col-image-left"></div>
                        <div className="mt-2">
                            <h1>Where were you shopping lately..?</h1>
                            <p className="lead">
                                Our team provides the best and hottest deals out in the market!
                                whether it is your closest meal, your latest device purchase or your next trip,
                                we will be able to lower your costs and add extra benefits for you!
                            </p>
                            {token ?
                                <Link type="button" className="btn main-color btn-lg text-white"
                                      to='search'>Explore top Coupons</Link>
                                :
                                <Link type="button" className="btn main-color btn-lg text-white"
                                      to='/login'>Login</Link>
                            }
                        </div>
                    </div>
                    <div className="m-2">
                        <div className="col-image-right"></div>
                        <div className="mt-2">
                            <h1>Our collection is always changing!</h1>
                            <p className="lead">
                                Try to check in daily as our collection is always changing!
                                we tend to collaborate with the most requested partners in the market!
                                we are diligent about our coupon selection,
                                and our members are always our top priority!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};