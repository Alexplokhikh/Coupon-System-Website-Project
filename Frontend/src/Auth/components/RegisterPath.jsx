import {Card, CardBody, CardText, CardTitle} from "reactstrap";
import {Link} from "react-router-dom";
import React from "react";

export const RegisterPath = () => {
    return(
    <div className="container container-fluid text-center justify-content-center">
        <div className="row row-cols-2">
            <div className="g-col-6 mt-5 d-inline-flex">
                <Card
                    style={{width: '22rem'}}>
                    <img alt="Sample" height="285" src="https://c.pxhere.com/images/c4/0c/698161723470c67d30da2d05a62d-1584859.jpg!d"/>
                    <CardBody>
                        <CardTitle tag="h5">Company</CardTitle>
                        <CardText>
                            Create and Manage your own Coupons
                        </CardText>
                        <Link type="button" to="/register-company" className="btn btn-lg btn-outline-dark">Company</Link>
                    </CardBody>
                </Card>
            </div>
            <div className="g-col-6 mt-5 d-inline-flex">
                <Card
                    style={{width: '22rem'}}>
                    <img alt="Sample" height="285" src="https://c.pxhere.com/images/dc/ee/f872c1e9c6ea6d87ec04fb011214-1446677.jpg!d"/>
                    <CardBody>
                        <CardTitle tag="h5">Customer</CardTitle>
                        <CardText>
                            Purchase coupons and Leave Reviews
                        </CardText>
                        <Link type="button" to="/register-customer" className="btn btn-lg btn-outline-dark">Customer</Link>
                    </CardBody>
                </Card>
            </div>
        </div>
    </div>
    )
};