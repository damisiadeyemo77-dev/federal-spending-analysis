Project 1 

-- Query 1: Top Sub-Agencies by Spending
SELECT 
    awarding_sub_agency_name,
    COUNT(*) AS total_contracts,
    ROUND(SUM(total_dollars_obligated), 2) AS total_spending
FROM FY2024_075_Contracts_Full_20260508_1
GROUP BY awarding_sub_agency_name
ORDER BY total_spending DESC
LIMIT 10;

-- Query 2: Top Vendors by Spending
SELECT 
    recipient_name,
    COUNT(*) AS total_contracts,
    ROUND(SUM(total_dollars_obligated), 2) AS total_spending
FROM FY2024_075_Contracts_Full_20260508_1
WHERE recipient_name IS NOT NULL
GROUP BY recipient_name
ORDER BY total_spending DESC
LIMIT 10;

-- Query 3: Award Type Breakdown
SELECT 
    award_type,
    COUNT(*) AS total_contracts,
    ROUND(SUM(total_dollars_obligated), 2) AS total_spending
FROM FY2024_075_Contracts_Full_20260508_1
WHERE award_type IS NOT NULL
GROUP BY award_type
ORDER BY total_spending DESC;

-- Query 4:Business Type Breakdown
SELECT 
    contracting_officers_determination_of_business_size,
    COUNT(*) AS total_contracts,
    ROUND(SUM(total_dollars_obligated), 2) AS total_spending
FROM FY2024_075_Contracts_Full_20260508_1
WHERE contracting_officers_determination_of_business_size IS NOT NULL
GROUP BY contracting_officers_determination_of_business_size
ORDER BY total_spending DESC;

-- Query 5: Top States by Contract Spending:
SELECT 
    primary_place_of_performance_state_name,
    COUNT(*) AS total_contracts,
    ROUND(SUM(total_dollars_obligated), 2) AS total_spending
FROM FY2024_075_Contracts_Full_20260508_1
WHERE primary_place_of_performance_state_name IS NOT NULL
GROUP BY primary_place_of_performance_state_name
ORDER BY total_spending DESC
LIMIT 10;

-- Query 6: Average Contract Value by Sub-Agency
SELECT 
    awarding_sub_agency_name,
    COUNT(*) AS total_contracts,
    ROUND(SUM(total_dollars_obligated), 2) AS total_spending,
    ROUND(AVG(total_dollars_obligated), 2) AS avg_contract_value
FROM FY2024_075_Contracts_Full_20260508_1
WHERE awarding_sub_agency_name IS NOT NULL
GROUP BY awarding_sub_agency_name
ORDER BY avg_contract_value DESC
LIMIT 10;
