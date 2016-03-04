package com.aol.spring.demo.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by ram on 01/03/16.
 */
@Entity
@Table(name = "chat")
public class Chat extends AbstractEntity {
    private String message;
    @Column(unique = true, nullable = false)
    private Long userId;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
}
