import {useSelector} from "react-redux";
import {RootState} from "../../Auth/store/store";
import {redirect, useNavigate, useNavigation} from "react-router-dom"
import React, {useState} from "react";
import {Button} from "reactstrap";
import {ExtractJWT} from "../Utils/ExtractJWT";

export const ManagePage = () => {

    const token = useSelector((state: RootState) => state.auth.token)
    const isAuthenticated = (token !== null)


    const [changeQuantityClick, setChangeQuantityClick] = useState(false);
    const [addCouponClick, setAddCouponClick] = useState(true);

    function addCouponClickFunc() {
        setChangeQuantityClick(false);
        setAddCouponClick(true)
    }

    function changeQuantityClickFunc() {
        setChangeQuantityClick(true);
        setAddCouponClick(false)
    }

    const isCustomer = ( (isAuthenticated && ExtractJWT(token,"roles") === ("CUSTOMER")) ||
        (isAuthenticated && ExtractJWT(token,"roles") === ("[CUSTOMER]"))
    )

    const isCompany = ( (isAuthenticated && ExtractJWT(token,"roles") === ("COMPANY")) ||
        (isAuthenticated && ExtractJWT(token,"roles") === ("[COMPANY]"))
    )


    return (
        <div className="container">
        <div className="mt-5">
            <h3>Manage Catalog</h3>
            <nav>
                <div className="nav nav-tabs" id="nav-tab" role='tablist'>
                    <Button onClick={addCouponClickFunc} className="nav-link active" id="nav-add-coupon-tab" data-bs-toggle='tab'
                        data-bs-target='#nav-add-coupon' type="button" role='tab' aria-controls='nav-add-coupon'
                        aria-selected='true'
                    >
                        Create new Coupon
                    </Button>
                    <Button onClick={changeQuantityClickFunc} className="nav-link" id="nav-quantity-tab" data-bs-toggle='tab'
                            data-bs-target='#nav-add-coupon' type="button" role='tab' aria-controls='nav-quantity'
                            aria-selected='false'
                    >
                        Change Quantity
                    </Button>
                </div>
            </nav>
            <div className="tab-content" id="nav-tabContent">
                <div className="tab-pane fade show active" id="nav-add-book" role="tabpanel"
                aria-labelledby='nav-add-coupon-tab'>
                    {addCouponClick? <>Create new Coupon</>:<></>}
                </div>
                <div className="tab-pane fade" id="nav-quantity" role="tabpanel"
                     aria-labelledby='nav-quantity-tab'>
                    {changeQuantityClick? <>Change Quantity</>:<></>}
                </div>
            </div>
        </div>
        </div>
    );
};