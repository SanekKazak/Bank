# Logistics Service

---

## About

This project is a REST-service for a logistics service, developed as part of a university project. The service aims to provide efficient management of transportation, drivers, and logistics hubs.

## Goals

The main goals of this project are:

1. Develop CRUD operations for each entity (transport, drivers, logistics hubs, and transportation).
2. Implement an endpoint to get the list of all planned transportation tasks, including information about the transport, driver, and logistics hubs involved.
3. Develop an endpoint to get the total number of transportation tasks for a specific logistics hub.
4. Ensure that all endpoints return only the specified data fields.

## Endpoints

1. CRUD operations for each entity:
   - Transport (vehicle type, characteristics, availability)
   - Drivers
   - Logistics Hubs (location, description, type)
   - Transportation (vehicle, origin and destination logistics hubs, cargo, additional details)

2. Get the list of all planned transportation tasks:
   - Includes information about the transport, driver, and logistics hubs involved.

3. Get the total number of transportation tasks for a specific logistics hub.

## Database Description

### Tables

1. Transport:
   - ID
   - Vehicle Type
   - Characteristics
   - Availability

2. Drivers:
   - ID
   - Name
   - Contact Information
   - Availability

3. Logistics Hubs:
   - ID
   - Location
   - Description
   - Type

4. Transportation:
   - ID
   - Transport ID
   - Driver ID
   - Origin Logistics Hub ID
   - Destination Logistics Hub ID
   - Cargo
   - Additional Details
   - Scheduled Date

### Table Relationships

- Relationship between Transport and Transportation: One-to-many.
- Relationship between Drivers and Transportation: One-to-many.
- Relationship between Logistics Hubs and Transportation: One-to-many (origin), One-to-many (destination).
