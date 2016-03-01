package com.aol.spring.demo.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by ram on 01/03/16.
 */
@Entity
public class Chat {
    @Id
    @GeneratedValue
    private long id;
    private String message;
    @Column(unique = true, nullable = false)
    private long userId;
}
