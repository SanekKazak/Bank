package com.service.Models;

import javax.persistence.*;

@Entity
@Table(name = "drivers")
public class Driver {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String contactInformation;

    @Column(nullable = false)
    private boolean availability;

    public Driver() {}

    public Driver(String name, String contactInformation, boolean availability) {
        this.name = name;
        this.contactInformation = contactInformation;
        this.availability = availability;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContactInformation() {
        return contactInformation;
    }

    public void setContactInformation(String contactInformation) {
        this.contactInformation = contactInformation;
    }

    public void setAvailability(boolean availability) {
        this.availability = availability;
    }

    public boolean isAvailability() {
        return availability;
    }
}
