SELECT *
FROM walmart_data;

-- Checking for Duplicate
SELECT Object_ID, COUNT(*) AS Count
FROM walmart_data
GROUP BY Object_ID
HAVING COUNT(*) > 1;

-- Checking for Null Data
SELECT COUNT(*) AS Missing_Status
FROM walmart_data
WHERE Operation_Status IS NULL OR TRIM(Operation_Status) = '';

-- Counting Total Open and Closed Stores
UPDATE walmart_data
SET Operation_Status = TRIM(LOWER(Operation_Status));

UPDATE walmart_data
SET Operation_Status =
	CASE
		WHEN Operation_Status = 'open' THEN 'Open'
        WHEN Operation_Status = 'closed' THEN 'Closed'
        ELSE 'Other'
	END;

-- Counting the total rows in the table
SELECT COUNT(*) AS Total_Stores
FROM walmart_data;

-- Counting Stores by the Status
SELECT Operation_Status, COUNT(*) AS Store_Count
FROM walmart_data
GROUP BY Operation_Status
ORDER BY Store_Count DESC;

-- Comparing the sum
SELECT SUM(Store_Count) AS Total_From_Status
FROM (
	SELECT Operation_Status, COUNT(*) AS Store_Count
    FROM walmart_data
    GROUP BY Operation_Status
) AS sub;

-- =====================
-- SECTION 2: STORE DISTRIBUTION BY STATE
-- =====================
SELECT State, COUNT(*) AS State_Count
FROM walmart_data
GROUP BY State
ORDER BY State_Count DESC
LIMIT 10;

SELECT State, COUNT(*) AS State_Count
FROM walmart_data
GROUP BY State
ORDER BY State_Count
LIMIT 10;

-- =====================
-- SECTION 3: STORE TYPE BREAKDOWN
-- =====================
SELECT DISTINCT `Type`, COUNT(*) AS Store_Count
FROM walmart_data
GROUP BY `Type`
ORDER BY Store_Count DESC;

-- =====================
-- SECTION 4: STORE TYPE VS STATE
-- =====================
SELECT State, COUNT(*) AS Wholesale_Count
FROM walmart_data
WHERE `Type` = 'Wholesale'
GROUP BY State
ORDER BY Wholesale_count DESC
LIMIT 10;

SELECT State, COUNT(*) AS Retail_Count
FROM walmart_data
WHERE `Type` = 'Retail'
GROUP BY STATE
ORDER BY Retail_Count DESC
LIMIT 10;

SELECT 
    State,
    COUNT(CASE WHEN `Type` = 'Retail' THEN 1 END) AS Retail_Count,
    COUNT(CASE WHEN `Type` = 'Wholesale' THEN 1 END) AS Wholesale_Count
FROM walmart_data
GROUP BY State
ORDER BY Retail_Count DESC
LIMIT 10;