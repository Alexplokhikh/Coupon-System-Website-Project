import {ExploreTopCoupons} from "./components/ExploreTopCoupons";
import {Carousel} from "./components/Carousel";
import {Heros} from "./components/Heros";
import {SupportServices} from "./components/SupportServices";
import React from "react";

export const HomePage = () => {
    return (
        <>
            <ExploreTopCoupons/>
            <Carousel/>
            <Heros/>
            <SupportServices/>
        </>
    );
};