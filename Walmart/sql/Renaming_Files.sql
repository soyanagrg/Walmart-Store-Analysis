SELECT *
FROM walmart_data;

ALTER TABLE walmart_data
RENAME COLUMN ï»¿OBJECTID TO Object_ID
;

ALTER TABLE walmart_data
RENAME COLUMN businessUnit_name TO BusinessUnit_Name
;

ALTER TABLE walmart_data
RENAME COLUMN businessUnit_number TO BusinessUnit_Number
;

ALTER TABLE walmart_data
RENAME COLUMN `Postal Code` TO Postal_Code
;

ALTER TABLE walmart_data
RENAME COLUMN `Operation Status` TO Operation_Status
;

ALTER TABLE walmart_data
RENAME COLUMN GlobalID TO Global_ID
;