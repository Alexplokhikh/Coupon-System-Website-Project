package com.ap.model.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "history")
@Data
public class History {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private Long id;
    @Column (name = "user_email")
    String userEmail;
    @Column (name = "checkout_date")
    String checkoutDate;
    @Column (name = "remove_date")
    String removedDate;
    @Column (name = "title")
    String title;
    @Column (name = "company")
    String company;
    @Column (name = "description")
    String description;
    @Column (name = "image_url")
    String imageUrl;

    public History() {
    }

    public History(String userEmail, String checkoutDate, String removedDate, String title, String company, String description, String imageUrl) {
        this.userEmail = userEmail;
        this.checkoutDate = checkoutDate;
        this.removedDate = removedDate;
        this.title = title;
        this.company = company;
        this.description = description;
        this.imageUrl = imageUrl;
    }

}
