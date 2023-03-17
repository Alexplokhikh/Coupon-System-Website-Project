import {NavLink} from "react-router-dom";
import {Button} from "reactstrap";
import React from "react";
import {useDispatch} from "react-redux";
import {logout} from "../../Auth/store/auth-slice";

export const CustomerButtons = () => {

    const dispatch = useDispatch()
    const handleLogout = () => {
        dispatch(logout())
    }

    return(
        <ul>
            <li className="d-inline-flex nav-item me-3">
                <NavLink className="nav-link" to='/profile'>Profile</NavLink>
            </li>
            <li className="d-inline-flex nav-item">
                <Button className="btn btn-outline-light" onClick={handleLogout}>Logout</Button>
            </li>
        </ul>

    )
};