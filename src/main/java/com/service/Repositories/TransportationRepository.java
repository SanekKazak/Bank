package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.service.Models.Transportation;

public interface TransportationRepository extends JpaRepository<Transportation, Long> {
    
}