import {Link} from "react-router-dom";
import React from "react";
import {useSelector} from "react-redux";
import {RootState} from "../../../Auth/store/store";
export const SupportServices = () => {

    const token = useSelector((state: RootState) => state.auth.token)

    return (
        <div className="container my-5">
            <div className="row p-4 align-items-center border shadow-lg">
                <div className="col-lg-7 p-3">
                    <h1 className="display-4 fw-bold">
                        Can't find what your'e looking for?
                    </h1>
                    <p className="lead">
                        If you cannot find what your'e looking for,
                        send a personal message to our support team!
                    </p>
                    <div className="d-grid gap-2 justify-content-md-start mb-4 mb-lg-3">
                        {token?
                            <Link to="#" type="button" className="btn main-color btn-lg px-4 me-md-2 fw-bold text-white">
                                Support Services
                            </Link>
                        :
                            <Link to='/login' type="button" className="btn main-color btn-lg text-white">
                                Login
                            </Link>
                        }

                    </div>
                </div>
                <div className="col-lg-4 offset-lg-1 shadow-lg lost-image"></div>
            </div>

        </div>
    );
};