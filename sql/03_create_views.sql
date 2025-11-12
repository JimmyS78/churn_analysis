-- Analyse exploratoire sur le churn par contrat/service
CREATE VIEW vue_churn_kpi AS
SELECT
    contract,
    internetservice,
    COUNT(*) AS total_clients,
    SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM clients
GROUP BY contract, internetservice;

-- Vue à exploiter pour créer des insights
CREATE VIEW vue_churn_detail AS
SELECT
    gender,
    seniorcitizen,
    tenure,
    contract,
    monthlycharges,
    totalcharges,
    churn
FROM clients;