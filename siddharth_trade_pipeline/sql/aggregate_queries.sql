-- 1. Total trade value by Sub-Category
SELECT SUB_CATEGORY, SUM("TOTAL VALUE_INR") AS total_value_inr
FROM trade_details
GROUP BY SUB_CATEGORY
ORDER BY total_value_inr DESC;

-- 2. Monthly trade value trend
SELECT YEAR, MONTH, SUM("TOTAL VALUE_INR") AS total_value_inr
FROM trade_details
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH;

-- 3. Yearly total trade value
SELECT YEAR, SUM("TOTAL VALUE_INR") AS yearly_total
FROM trade_details
GROUP BY YEAR
ORDER BY YEAR;

-- 4. Peak month for trade value (highest single month)
SELECT YEAR, MONTH, SUM("TOTAL VALUE_INR") AS total_value_inr
FROM trade_details
GROUP BY YEAR, MONTH
ORDER BY total_value_inr DESC
LIMIT 1;

-- 5. Lowest month for trade value (lowest single month)
SELECT YEAR, MONTH, SUM("TOTAL VALUE_INR") AS total_value_inr
FROM trade_details
GROUP BY YEAR, MONTH
ORDER BY total_value_inr ASC
LIMIT 1;

-- 6. Top 10 suppliers by trade value
SELECT IEC, SUM("TOTAL VALUE_INR") AS total_value_inr
FROM trade_details
GROUP BY IEC
ORDER BY total_value_inr DESC
LIMIT 10;

-- 7. Supplier "Active vs Churned" status (Python, but for documentation)
-- (See pandas code in notebook; this logic is hard in standard SQL for SQLite.)

-- 8. Product model count by sub-category
SELECT SUB_CATEGORY, COUNT(DISTINCT EXTRACTED_MODEL) AS num_models
FROM trade_details
GROUP BY SUB_CATEGORY
ORDER BY num_models DESC;

-- 9. High-value transactions (over 1 crore INR)
SELECT *
FROM trade_details
WHERE "TOTAL VALUE_INR" > 10000000
ORDER BY "TOTAL VALUE_INR" DESC;
