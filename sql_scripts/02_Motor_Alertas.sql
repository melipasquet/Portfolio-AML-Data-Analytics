-- ====================================================================
-- SCRIPT DE MONITOREO TRANSACCIONAL - MOTOR DE ALERTAS
-- ====================================================================
-- Esta consulta simula un motor de reglas automatizado que escanea la
-- base de datos transaccional en busca de diferentes patrones de riesgo.
-- Utiliza UNION ALL para combinar los resultados de múltiples reglas en una
-- única lista de alertas para ser investigada.

USE portfolio_aml;

-- Regla 1: Detección de Pitufeo (Structuring)
SELECT
    c.customer_id,
    c.full_name_company_name,
    'Posible Pitufeo / Structuring' AS alert_reason,
    MAX(t.transaction_date) AS alert_date,
    SUM(t.amount) AS amount_involved
FROM
    transactions t
JOIN
    customers c ON t.customer_id = c.customer_id
WHERE
    t.is_cash_transaction = 'SI'
    AND t.transaction_type = 'Depósito'
    AND t.amount BETWEEN 9000 AND 9999.99
GROUP BY
    c.customer_id, c.full_name_company_name
HAVING
    COUNT(t.transaction_id) >= 3

UNION ALL

-- Regla 2: Transferencias de ALTO VALOR a Jurisdicciones de Riesgo
SELECT
    c.customer_id,
    c.full_name_company_name,
    'Transferencia de Alto Valor a Jurisdicción de Riesgo' AS alert_reason,
    t.transaction_date AS alert_date,
    t.amount AS amount_involved
FROM
    transactions t
JOIN
    customers c ON t.customer_id = c.customer_id
WHERE
    t.transaction_type = 'Transferencia Enviada'
    AND t.amount > 200000
    AND t.destination_country IN ('Valeria', 'Norlandia', 'Russonia', 'Kaiman Islands')

UNION ALL

-- Regla 3: Transferencia ÚNICA a País de Muy Alto Riesgo (para Falso Positivo)
SELECT
    c.customer_id,
    c.full_name_company_name,
    'Transferencia a Jurisdicción de Muy Alto Riesgo' AS alert_reason,
    t.transaction_date AS alert_date,
    t.amount AS amount_involved
FROM
    transactions t
JOIN
    customers c ON t.customer_id = c.customer_id
WHERE
    t.transaction_type = 'Transferencia Enviada'
    AND t.amount > 100000
    AND t.destination_country = 'Somalilandia';
