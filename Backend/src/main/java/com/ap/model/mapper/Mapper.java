package com.ap.model.mapper;


import com.ap.model.dto.CompanyDto;
import com.ap.model.dto.CouponDto;
import com.ap.model.dto.CustomerDto;
import com.ap.model.entity.Company;
import com.ap.model.entity.Coupon;
import com.ap.model.entity.Customer;

public interface Mapper {
    public Coupon map(CouponDto dto);

    public CouponDto map(Coupon coupon);

    public Customer map(CustomerDto dto);

    public CustomerDto map(Customer customer);

    public Company map(CompanyDto dto);

    public CompanyDto map(Company company);
}
