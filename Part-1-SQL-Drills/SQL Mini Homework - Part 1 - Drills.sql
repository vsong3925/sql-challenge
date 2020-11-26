-- Drill 1: SQL Joins
/* 
Part 1: Describe the different types of joins in SQL
- Inner Join: An inner join of A and B gives result of A intersect B.
- Outer Join: An outer join of A and B gives result of A union B. 
              Left join: keep everything in the left table

Part 2: Which type of join was used to create the final table?
- inner join
- code for join two tables
*/
select 
     vt.vendor_name,
     vt.vendor_country,
     yt.yarn_name,
     yt.yarn_type
from vendor_table vt 
join yardn_table yt 
using (vendor_id);

-- ---------------------------------------
-- Drill 2: Alter vs. Update
/* 
Part 1: Explain the difference between alter and update in SQL statement
- Update: update the values in the selected columns
- alter: add columns or change the name of selected columns 

Part 2: Change the name of the column from department_id to dept_id
*/
alter table employee
rename column department_id to dept_id;

alter table employee
add column annual_salary int;

-- ---------------------------------------
-- Drill 3: DML & DDL
/* 
Part 1: What is the difference between DML and DDL in SQL?
- DML: Data Manipulation Language, deals with the manipulation of the data in the database
       exampple: insert, update, delete
- DDL: Data Definition Language, used to define the database schema
       example: create, drop, alter, truncate, comment, rename
Part 2: Demonstrate a use of DML in the following table:
- See example code below
*/
-- insert values
insert into vendor (vendor_name, vendor_country)
values ('vendor 1', 'United States')
       ('vendor 2', 'UK');

-- update selected values
 update vendorset vendor_country = 'United States'
 where id = 1;

 -- ---------------------------------------
-- Drill 4: Duplicates
/* Part 1: How do you locate a duplicate record with one field. Write a query to demonstrate. */
select * 
from yarn_table
where id = 5;

/* Part 2: Hwo do you find duplicate records using more than one field? Write a query to demonstrate. */
select * 
from yarn_table
where id = 5 and yarn_name = 'Heritage';

-- ---------------------------------------
-- Drill 5: Group By
/* Part 1: What is an equivalent SQL query? Instead of sum, find the mean duration by state. */
select 
   state,
   round(avg(duration),2) as "mean_duration"
from state_info
group by state,
order by state;