package com.service.Models;

import javax.persistence.*;

@Entity
@Table(name = "Drivers")
public class Driver {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "Name", nullable = false)
    private String name;

    @Column(name = "ContactInformation", nullable = false)
    private String contactInformation;

    @Column(name = "Availability", nullable = false)
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
