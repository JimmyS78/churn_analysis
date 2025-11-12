-- Supprimer les lignes où le "client" n'a jamais payé de service
DELETE FROM clients WHERE totalcharges IS NULL;

-- Conversion de champs texte en binaire
UPDATE clients
SET partner = CASE WHEN partner='Yes' THEN 1 ELSE 0 END,
    dependents = CASE WHEN dependents='Yes' THEN 1 ELSE 0 END,
    phoneservice = CASE WHEN phoneservice='Yes' THEN 1 ELSE 0 END,
    paperlessbilling = CASE WHEN paperlessbilling='Yes' THEN 1 ELSE 0 END;

-- Suppression de doublons
DELETE FROM clients
WHERE customerid IN (
    SELECT CustomerID FROM clients
    GROUP BY CustomerID HAVING COUNT(*) > 1
);