use database REALESTATE
select * from realestate_dataset;


select * from realestate_dataset limit 10
DESCRIBE realestate_dataset

select  'Date Sold' , 'Sale Price' , 'Floor Level'  from realestate_dataset
group by 'Data Sold' , 'Sale Price' , 'Floor Level'
Having count(*) > 1

select 'Date Sold' , 'Sale Price' , 'Floor Level' count(*) as count_rows 
from realestate_dataset
where  'Date Sold' = '' 
and 'Sales Price' = '' 
and  'Floor Level' = '' 
group by  'Date Sold' , 'Sale Price' , 'Floor Level'

SELECT COUNT(*) FROM realestate_dataset WHERE `Sale Price`  = '';
SELECT COUNT(*) FROM realestate_dataset WHERE `Floor Level`  = '';
SELECT COUNT(*) FROM realestate_dataset WHERE `Date Sold`  = '';

SELECT count(*) as count FROM realestate_dataset
WHERE `Sale Price`  > 500000

ALTER TABLE realestate_dataset ADD COLUMN price_category VARCHAR(20);

SET SQL_SAFE_UPDATES = 0;

UPDATE realestate_dataset
SET price_category =
CASE 
	WHEN `Sale price` > 1000000 THEN 'Luxury'
	WHEN `Sale price` BETWEEN 500000 AND 1000000 THEN 'Mid-Range'
	ELSE 'Affordable'
END 
WHERE `Property ID` > 0;


DESCRIBE realestate_dataset


