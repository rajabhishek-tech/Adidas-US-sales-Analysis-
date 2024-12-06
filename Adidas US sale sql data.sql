-- 1 Creating database and using it .
create database adidas;

use adidas;


CREATE TABLE sales (
 sales_id INT,                          -- Assuming sales ID is an integer
    retailer VARCHAR(255),                 -- Retailer names are typically strings, with a maximum length of 255
    retailer_id INT,                       -- Assuming retailer ID is numeric
    invoice_date DATE,                     -- Dates should use the DATE type
    region VARCHAR(100),                   -- Assuming region is a string with a max length of 100
    state VARCHAR(100),                    -- States are strings, usually 100 characters is sufficient
    city VARCHAR(100),                     -- Cities are strings, similar to states
    product VARCHAR(255),                  -- Product names are strings, with a max length of 255
    price_per_unit INT,         -- Prices should be stored as DECIMAL for precision (10 digits total, 2 after the decimal)
    units_sold INT,                        -- Units sold are integers
    total_sales INT,            -- Total sales should also use DECIMAL (more digits for larger totals)
    operating_profit INT,       -- Profit can be a DECIMAL for precision
    sales_method VARCHAR(100)              -- Sales method (e.g., "online" or "in-store") is a string
);


Select * from sales;

-- 2 finding out the records of the dataset and size. 

Select COUNT(*) from sales;

-- 3. Changed column names to remove special charaters and unwanted spaces.
ALTER TABLE sales RENAME COLUMN ï»¿Retailer TO retailer;
ALTER TABLE sales RENAME COLUMN `Retailer ID` TO retailer_id;
 ALTER TABLE sales RENAME COLUMN `Invoice Date` TO invoice_date;
 ALTER TABLE sales RENAME COLUMN Region TO region;
 ALTER TABLE sales RENAME COLUMN State TO state;
 ALTER TABLE sales RENAME COLUMN City TO city;
 ALTER TABLE sales RENAME COLUMN Product TO product;
 ALTER TABLE sales RENAME COLUMN `Price per Unit` TO price_per_unit;
 ALTER TABLE sales RENAME COLUMN `Units Sold` TO units_sold;
 ALTER TABLE sales RENAME COLUMN `Total Sales` TO total_sales;
 ALTER TABLE sales RENAME COLUMN `Operating Profit` TO operating_profit;
 ALTER TABLE sales RENAME COLUMN `Sales Method` TO sales_method;

-- 4. Checked column data types. Can also be done using i icon for table info.
 SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'sales';
 
 -- 5 Checked for total_sales value discrepancy.
 SELECT * FROM sales WHERE total_sales != price_per_unit ;
 
 
 -- 6. Inspected all text data type columns for value discrepancies. Spelling discrepancy was found in product column.
SELECT DISTINCT(retailer) FROM sales;
 SELECT DISTINCT(region) FROM sales;
 SELECT DISTINCT(state) FROM sales;
 SELECT DISTINCT(city) FROM sales;
 SELECT DISTINCT(product) FROM sales;
SELECT DISTINCT(sales_method) FROM sales;



-- 24. Added sales_id column as Primary Key.
ALTER TABLE sales ADD COLUMN sales_id INT AUTO_INCREMENT PRIMARY KEY FIRST;