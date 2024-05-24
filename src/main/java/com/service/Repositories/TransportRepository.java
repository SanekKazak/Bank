package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.service.Models.Transport;

public interface TransportRepository extends JpaRepository<Transport, Long> {
    
}