package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.service.Models.Driver;

@Repository
public interface DriverRepository extends JpaRepository<Driver, Long> {
    
}