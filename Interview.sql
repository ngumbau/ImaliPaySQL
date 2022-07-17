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
-- Add column national_anthem (maximum 400 characters) can be empty
-- Assumption - table countries (not specified in question)

ALTER TABLE countries
ADD national_anthem character varying(400);

-- Question 5:
-- Add a primary key for a combination of columns region_id and country_id
-- Assumption - table countries (not specified in question)

-- Question 6:
-- Write a SQL statement to drop any existing foreign key from countries table


-- Question 7:
-- Write a SQL statement to change the data type of the column national_anthem to text in the table locations
-- NOTE - The question states we should change the table locations but following the flow of questions above should the table be countries
-- NOTE - Sticking with the table mentioned in the question - table locations.

ALTER TABLE locations
ALTER COLUMN national_anthem TYPE TEXT;

-- Question 8:
-- Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according to the company rules.
-- Department 40 - 25%, Department 90 - 15%, Department 110 - 10%, and the rest ofthe departments will remain the same.

UPDATE employees
SET salary=
	CASE
		WHEN department = 40 then 1.25 * salary
		WHEN department = 90 then 1.15 * salary
		WHEN department = 110 then 1.10 * salary
		ELSE salary
	END;

-- Question 9:
-- Write a SQL statement to create a table employees including columns -- employee_id, first_name, last_name, job_id, salary
-- Make sure that the employee_id column does not contain any duplicate value at the time of insertion, 
-- and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which exist in the jobs table. 
-- The specialty of the statement is that, The ON DELETE NO ACTION and the ON UPDATE NO ACTION actions will reject the deletion and any updates.

