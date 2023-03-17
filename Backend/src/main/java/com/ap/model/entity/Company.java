package com.ap.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "company")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString(onlyExplicitlyIncluded = true)
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Company {
    @Id @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name="uuid")
    @EqualsAndHashCode.Include
    private String uuid;
    @Column(name = "name")
    private String name;
    @Column(name = "email")
    private String email;

    @OneToMany(fetch = FetchType.LAZY,
                cascade = {CascadeType.DETACH, CascadeType.MERGE,
                CascadeType.REFRESH, CascadeType.PERSIST})
    @JoinTable(name="company_coupon",
            joinColumns = @JoinColumn(name="company_id"),
            inverseJoinColumns = @JoinColumn(name="coupon_id"))
    @ToString.Exclude
    private Set<Coupon> coupons;

    public Company(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public void add(Coupon coupon) {
        if (coupons == null) {
            coupons = new HashSet<>();
        }
        coupons.add(coupon);
    }
}


