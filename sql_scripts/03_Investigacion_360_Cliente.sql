-- ====================================================================
-- SCRIPT DE INVESTIGACIÓN DE ALERTAS - VISTA 360° DEL CLIENTE
-- ====================================================================
-- Una vez que una alerta es generada por el motor, un analista ejecuta
-- estas consultas para enriquecer la alerta con contexto y tomar una
-- decisión informada (Triage: Verdadero vs. Falso Positivo).

USE portfolio_aml;

-- Establece el ID del cliente a investigar en una variable para facilitar la consulta.
-- Cambia el valor de @alerted_customer_id por el ID que quieras investigar (ej. 'SB-1025', 'SB-2015').
SET @alerted_customer_id = 'SB-1025';

-- Consulta 1: Perfil Completo del Cliente
-- Extrae los datos estáticos para entender el riesgo inherente del cliente.
SELECT
    customer_id,
    full_name_company_name,
    onboarding_date,
    country_of_residence,
    industry_code_occupation,
    pep_flag
FROM
    customers
WHERE
    customer_id = @alerted_customer_id;

-- Consulta 2: Historial Transaccional Completo
-- Extrae todas las transacciones recientes para analizar el patrón de actividad completo.
SELECT
    transaction_date,
    transaction_type,
    amount,
    currency,
    destination_country,
    is_cash_transaction
FROM
    transactions
WHERE
    customer_id = @alerted_customer_id
ORDER BY
    transaction_date DESC;
