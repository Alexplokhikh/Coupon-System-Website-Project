package com.ap.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="customer")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString(onlyExplicitlyIncluded = true)
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Customer {
    @Id @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "uuid")
    @EqualsAndHashCode.Include
    private String uuid;
    @Column(name="first_name")
    private String firstName;
    @Column(name="last_name")
    private String lastName;
    @Column(name="email")
    private String email;

    @ManyToMany(fetch = FetchType.LAZY,
            cascade = {CascadeType.DETACH,CascadeType.MERGE,
                    CascadeType.REFRESH,CascadeType.PERSIST})
    @JoinTable(
            name="customer_coupon",
            joinColumns = @JoinColumn(name="customer_id"),
            inverseJoinColumns = @JoinColumn(name="coupon_id")
    )
    @ToString.Exclude
    private Set<Coupon> coupons;

    public Customer(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public void add(Coupon coupon) {
        if (coupons == null) {
            coupons = new HashSet<>();
        }
        coupons.add(coupon);
    }

}
