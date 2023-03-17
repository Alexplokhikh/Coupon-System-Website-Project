package com.ap.model.mapper;

import com.ap.model.dto.CompanyDto;
import com.ap.model.dto.CouponDto;
import com.ap.model.dto.CustomerDto;
import com.ap.model.entity.Company;
import com.ap.model.entity.Coupon;
import com.ap.model.entity.Customer;
import org.springframework.stereotype.Component;

@Component
public class MapperImpl implements Mapper {
    @Override
    public Coupon map(CouponDto dto) {
        return Coupon.builder()
                .uuid(dto.getUuid())
                .companyId(dto.getCompanyId())
                .category(dto.getCategory())
                .title(dto.getTitle())
                .startDate(dto.getStartDate())
                .endDate(dto.getEndDate())
                .amount(dto.getAmount())
                .price(dto.getPrice())
                .imageUrl(dto.getImageUrl())
                .description(dto.getDescription())
                .build();

    }

    @Override
    public CouponDto map(Coupon coupon) {
        return CouponDto.builder()
                .id(coupon.getId())
                .uuid(coupon.getUuid())
                .companyId(coupon.getCompanyId())
                .category(coupon.getCategory())
                .title(coupon.getTitle())
                .startDate(coupon.getStartDate())
                .endDate(coupon.getEndDate())
                .amount(coupon.getAmount())
                .price(coupon.getPrice())
                .description(coupon.getDescription())
                .imageUrl(coupon.getImageUrl())
                .build();
    }

    @Override
    public Customer map(CustomerDto dto) {
        return Customer.builder()
                .uuid(dto.getUuid())
                .firstName(dto.getFirstName())
                .lastName(dto.getLastName())
                .email(dto.getEmail())
                .build();
    }

    @Override
    public CustomerDto map(Customer customer) {
        return CustomerDto.builder()
                .uuid(customer.getUuid())
                .firstName(customer.getFirstName())
                .lastName(customer.getLastName())
                .email(customer.getEmail())
                .build();
    }

    @Override
    public Company map(CompanyDto dto) {
        return Company.builder()
                .uuid(dto.getUuid())
                .name(dto.getName())
                .email(dto.getEmail())
                .build();
    }

    @Override
    public CompanyDto map(Company company) {
        return CompanyDto.builder()
                .uuid(company.getUuid())
                .name(company.getName())
                .email(company.getEmail())
                .build();
    }
}
