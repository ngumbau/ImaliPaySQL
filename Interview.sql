-- Question 1: Create simple tables countries and regions.
-- Countries table includes columns country_id, country_name and region_id which already exist.

CREATE TABLE IF NOT EXISTS countries
(
    country_id character varying(50) NOT NULL,
    country_name character varying(250) NOT NULL,
    region_id integer,
    PRIMARY KEY (country_id)
);

CREATE TABLE regions
(
    region_id integer NOT NULL,
    region_name character varying(250) NOT NULL,
    PRIMARY KEY (region_id)   
);

-- Question 2: Insert rows from the country_new table to countries table

INSERT INTO countries
SELECT * FROM country_new

-- Question 3:
-- Create a duplicate copy of countries table including structure and data by name dup_countries

CREATE TABLE dup_countries
AS TABLE countries

-- Question 4:
-- Write a SQL statement to add column national_anthem (maximum 400
-- characters) can be empty

-- Question 5:
-- Write an SQL statement to add a primary key for a combination of columns
-- region_id and country_id

-- Question 6:
-- Write a SQL statement to drop any existing foreign key from countries
-- table


-- Question 7:
-- Write a SQL statement to change the data type of the column
-- national_anthem to text in the table locations

-- Question 8:
-- Write a SQL statement to increase the salary of employees under the
-- department 40, 90 and 110 according to the company rules that, the salary
-- will be increased by 25% of the department 40, 15% for department 90 and
-- 10% of the department 110 and the rest of the department will remain
-- same

-- Question 9:
-- Write a SQL statement to create a table employees including columns
-- employee_id, first_name, last_name, job_id, salary and make sure that,
-- the employee_id column does not contain any duplicate value at the time
-- of insertion, and the foreign key column job_id, referenced by the column
-- job_id of jobs table, can contain only those values which exist in the jobs
-- table. The specialty of the statement is that, The ON DELETE NO ACTION
-- and the ON UPDATE NO ACTION actions will reject the deletion and any
-- updates.

