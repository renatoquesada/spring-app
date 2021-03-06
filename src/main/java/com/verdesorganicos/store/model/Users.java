package com.verdesorganicos.store.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by renato on 1/24/2016.
 */

@Entity
public class Users {

    @Id
    @GeneratedValue
    private int userId;
    private String username;
    private String password;
    private boolean enabled;
    private int customerId;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int usersId) {
        this.userId = usersId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
}
