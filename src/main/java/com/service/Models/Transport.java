package com.service.Models;

import javax.persistence.*;

@Entity
@Table(name = "Transport")
public class Transport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "VehicleType", nullable = false)
    private String vehicleType;

    @Column(name = "Characteristics")
    private String characteristics;

    @Column(name = "Availability", nullable = false)
    private boolean availability;

    public Transport() {}

    public Transport(String vehicleType, String characteristics, boolean availability) {
        this.vehicleType = vehicleType;
        this.characteristics = characteristics;
        this.availability = availability;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getCharacteristics() {
        return characteristics;
    }

    public void setCharacteristics(String characteristics) {
        this.characteristics = characteristics;
    }

    public boolean isAvailability() {
        return availability;
    }

    public void setAvailability(boolean availability) {
        this.availability = availability;
    }
}
