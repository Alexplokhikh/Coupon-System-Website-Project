import React from "react";
import ProfileCurrentPurchases from "../../../models/ProfileCurrentPurchases";
import {Button} from "reactstrap";

export const PurchasesModal: React.FC<{ profileCurrentPurchase: ProfileCurrentPurchases, mobile: boolean, removeCoupon:any; }> = (props) => {
    return (
        <div className="modal fade" id={props.mobile ?
            `mobilemodal${props.profileCurrentPurchase.coupon.id}`
            :
            `modal${props.profileCurrentPurchase.coupon.id}`} data-bs-backdrop='static' data-bs-keyboard='false'
            aria-labelledby='staticBackdropLabel' aria-hidden='true' key={props.profileCurrentPurchase.coupon.id}>
                <div className="modal-dialog">
                    <div className="modal-content">
                        <div className="modal-header">
                            <h5 className="modal-title" id="staticBackdropLabel">
                                Options
                            </h5>
                            <Button type="button" className="btn-close" data-bs-dismiss='modal' aria-label='close'>

                            </Button>
                        </div>
                        <div className="modal-body">
                            <div className="container">
                                <div className="mt-3">
                                    <div className="row">
                                        <div className="col-2">
                                            {props.profileCurrentPurchase.coupon?.imageUrl ?
                                                <img src={props.profileCurrentPurchase.coupon?.imageUrl}
                                                    width="55" height="85" alt="Coupon"/>
                                                :
                                                <img src={require('./../../../Images/CouponImages/image-1.jpg')}
                                                    width="55" height="85" alt="Coupon"/>
                                            }
                                        </div>
                                        <div className="col-10">
                                            <h6>{props.profileCurrentPurchase.coupon.companyId}</h6>
                                            <h4>{props.profileCurrentPurchase.coupon.title}</h4>
                                        </div>
                                    </div>
                                    <hr/>
                                    {props.profileCurrentPurchase.daysLeft > 0 &&
                                        <p className="text-secondary">
                                            Due in {props.profileCurrentPurchase.daysLeft} days
                                        </p>
                                    }
                                    <div className="list-group mt-3">
                                        <Button data-bs-dismiss='modal' aria-current="true"
                                                className="list-group-item list-group-item-action"
                                                onClick={()=>props.removeCoupon(props.profileCurrentPurchase.coupon.id)}>
                                            Delete Coupon
                                        </Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="modal-footer">
                            <Button type="button" className="btn btn-secondary" data-bs-dismiss='modal'>
                                Close
                            </Button>
                        </div>
                    </div>
                </div>
        </div>
    );
};