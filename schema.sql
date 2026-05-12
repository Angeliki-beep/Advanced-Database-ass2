CREATE DATABASE CRM_System;
USE CRM_System;

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50),
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    company VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    contact_type VARCHAR(50),
    contact_value VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Leads (
    lead_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    lead_source VARCHAR(100),
    status VARCHAR(50),
    assigned_to INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (assigned_to) REFERENCES Users(user_id)
);

CREATE TABLE Interactions (
    interaction_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    user_id INT,
    interaction_type VARCHAR(50),
    notes TEXT,
    interaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Integration_Log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    external_system VARCHAR(100),
    sync_status VARCHAR(50),
    sync_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    details TEXT
);