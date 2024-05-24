package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.service.Models.Driver;

public interface DriverRepository extends JpaRepository<Driver, Long> {
    
}