package com.ap.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity
@Table(name = "coupon")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Coupon {
    @Id @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name="uuid")
    @EqualsAndHashCode.Include
    private String uuid;
    @Column(name = "company_id")
    private long companyId;
    @Column(name = "category")
    private String category;
    @Column(name = "title")
    private String title;
    @Column(name = "start_date")
    private Date startDate;
    @Column(name = "end_date")
    private Date endDate;
    @Column(name = "amount_available")
    private int amount;
    @Column(name = "description")
    private String description;
    @Column(name = "price")
    private BigDecimal price;
    @Column(name = "image_url")
    private String imageUrl;

    public Coupon(long companyId, String category, String title, Date startDate, Date endDate, int amount, String description, BigDecimal price, String imageUrl) {
        this.companyId = companyId;
        this.category = category;
        this.title = title;
        this.startDate = startDate;
        this.endDate = endDate;
        this.amount = amount;
        this.description = description;
        this.price = price;
        this.imageUrl = imageUrl;
    }
}
