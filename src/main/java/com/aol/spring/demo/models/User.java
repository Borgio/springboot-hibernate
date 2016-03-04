package com.aol.spring.demo.models;

import javax.persistence.*;

/**
 * Created by ram on 01/03/16.
 */
@Entity
@Table(name = "user")
public class User extends AbstractEntity {
    @Column(nullable = false)
    private String name;
    private String email;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
