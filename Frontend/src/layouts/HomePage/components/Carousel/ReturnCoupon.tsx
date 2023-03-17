
import CouponModel from "../../../../models/CouponModel";
import {Link} from "react-router-dom";

export const ReturnCoupon: React.FC<{coupon: CouponModel}> = (props) => {

    return (
        <div className="col-xs-6 col-sm-6 col-md-4 col-lg-3 mb-3">
            <div className="text-center">
                {props.coupon.imageUrl ?

                    <img src={props.coupon.imageUrl}
                        width="155"
                        height="235"
                        alt="coupon"
                    />
                    :
                    <img src={require("../../../../Images/CouponImages/image-1.jpg")}
                         width="155"
                         height="235"
                         alt="coupon"
                    />
                }


                <h6 className="mt-2">{props.coupon.title}</h6>
                <p>{props.coupon.companyId}</p>
                <Link className="btn main-color text-white" to={`/checkout/${props.coupon.id}`}>Purchase</Link>
            </div>
        </div>
    );
};