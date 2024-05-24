package com.service.Models;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "Transportation")
public class Transportation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "TransportID", updatable = false)
    private Transport transport;

    @ManyToOne
    @JoinColumn(name = "DriverID", updatable = false)
    private Driver driver;

    @ManyToOne
    @JoinColumn(name = "OriginLogisticsHubID", updatable = false)
    private LogisticsHub originLogisticsHub;

    @ManyToOne
    @JoinColumn(name = "DestinationLogisticsHubID", updatable = false)
    private LogisticsHub destinationLogisticsHub;

    @Column(name = "Cargo", nullable = false)
    private String cargo;

    @Column(name = "additionalDetails")
    private String additionalDetails;

    @Column(name = "scheduledDate", nullable = false)
    private Date scheduledDate;

    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Transport getTransport() {
        return transport;
    }

    public void setTransport(Transport transport) {
        this.transport = transport;
    }

    public Driver getDriver() {
        return driver;
    }

    public void setDriver(Driver driver) {
        this.driver = driver;
    }

    public LogisticsHub getOriginLogisticsHub() {
        return originLogisticsHub;
    }

    public void setOriginLogisticsHub(LogisticsHub originLogisticsHub) {
        this.originLogisticsHub = originLogisticsHub;
    }

    public LogisticsHub getDestinationLogisticsHub() {
        return destinationLogisticsHub;
    }

    public void setDestinationLogisticsHub(LogisticsHub destinationLogisticsHub) {
        this.destinationLogisticsHub = destinationLogisticsHub;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getAdditionalDetails() {
        return additionalDetails;
    }

    public void setAdditionalDetails(String additionalDetails) {
        this.additionalDetails = additionalDetails;
    }

    public Date getScheduledDate() {
        return scheduledDate;
    }

    public void setScheduledDate(Date scheduledDate) {
        this.scheduledDate = scheduledDate;
    }
}
