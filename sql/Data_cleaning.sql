create database boutique_db;
use boutique_db;
create table sales(customer_id int,name varchar(50),sales_date date,amount decimal(10,2));
select * from sales;
SELECT COUNT(*) FROM sales;
drop table sales;
create table sales_raw(customer_id varchar(250),name varchar(50),sales_date varchar(250),amount varchar(250));
create table sales(customer_id int,name varchar(100),sales_date date,amount decimal(10,2));
select * from sales_raw
limit 5;

  
  INSERT INTO sales (customer_id, name, sales_date, amount)
SELECT 
    CAST(customer_id AS UNSIGNED),
    name,
    CASE 
        WHEN sales_date IS NULL OR sales_date = '' THEN NULL
        ELSE STR_TO_DATE(sales_date, '%W, %M %e, %Y')
    END,
    CAST(
        REPLACE(
            REPLACE(NULLIF(amount,''), ',', ''),
        '₹','') 
    AS DECIMAL(10,2))
FROM sales_raw
WHERE amount IS NOT NULL
  AND amount <> '';

select count(*) from sales;
drop table sales;
select * from sales;
create table salaries_raw(employee_id int,name varchar(50),role varchar(60),salary_per_day decimal(10,2),salary_per_month decimal(10,2));
create table salries 
select * from salaries_raw;
create table expenses(expense_name varchar(60),cost decimal(10,2));
