-- ====================================================================
-- SCRIPT DE CREACIÓN DE TABLAS PARA EL PORTFOLIO AML DATA ANALYTICS
-- ====================================================================
-- Este script define la estructura de la base de datos 'portfolio_aml'.
-- Ejecutar este script primero para crear las tablas necesarias antes de importar los datos CSV.

CREATE SCHEMA IF NOT EXISTS portfolio_aml;
USE portfolio_aml;

-- Tabla 1: customers
-- Almacena la información estática y de perfil de cada cliente.
-- Esta es la tabla maestra de entidades.
CREATE TABLE customers (
    customer_id VARCHAR(10) NOT NULL,
    customer_type VARCHAR(20),
    full_name_company_name VARCHAR(255),
    onboarding_date DATE,
    country_of_residence VARCHAR(100),
    industry_code_occupation VARCHAR(100),
    pep_flag VARCHAR(2),
    PRIMARY KEY (customer_id)
);

-- Tabla 2: transactions
-- Registra todas las operaciones financieras de los clientes.
-- Se vincula a la tabla 'customers' a través de customer_id.
CREATE TABLE transactions (
    transaction_id VARCHAR(15) NOT NULL,
    customer_id VARCHAR(10),
    transaction_date DATE,
    amount DECIMAL(18, 2),
    currency VARCHAR(10),
    transaction_type VARCHAR(50),
    destination_country VARCHAR(100),
    is_cash_transaction VARCHAR(2),
    PRIMARY KEY (transaction_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Tabla 3: entities_and_ownership
-- Define las relaciones de propiedad y control entre entidades.
-- Es la fuente de datos para el análisis de redes (Proyecto 3).
CREATE TABLE entities_and_ownership (
    source_id VARCHAR(10) NOT NULL,
    source_name VARCHAR(255),
    source_type VARCHAR(20),
    target_id VARCHAR(10) NOT NULL,
    target_name VARCHAR(255),
    relationship_type VARCHAR(50) NOT NULL,
    ownership_percentage DECIMAL(5, 2),
    PRIMARY KEY (source_id, target_id, relationship_type)
);

-- Tabla 4: alerts_and_reports (Opcional, para simular resultados)
-- Almacena el output del sistema de monitoreo.
CREATE TABLE alerts_and_reports (
    alert_id VARCHAR(10) NOT NULL,
    customer_id VARCHAR(10),
    generation_date DATE,
    alert_reason VARCHAR(255),
    status VARCHAR(50),
    sar_filed VARCHAR(2),
    PRIMARY KEY (alert_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
