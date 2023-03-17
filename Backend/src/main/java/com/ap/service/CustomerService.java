package com.ap.service;

import com.ap.model.entity.Customer;
import com.ap.repository.CustomerRepository;
import com.ap.security.auth.RegisterCustomerRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomerService {

    private final CustomerRepository repository;

    public void registerCustomer(RegisterCustomerRequest request) {
        var customer = Customer.builder()
                .firstName(request.getFirstName())
                .lastName(request.getLastName())
                .email(request.getEmail())
                .build();
        repository.save(customer);
    }

}
