
use Advanced_sql_questions

-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry


select * from EmployeeRecords

with cte as (
select *,
ROW_NUMBER() over(partition by EmployeeID,EmployeeName,ManagerID order by EmployeeID) [Row_Number]
from EmployeeRecords
)
--select * from cte

-- Remove duplicate records

delete from cte where dr=2

select * from EmployeeRecords

select * into emprecords_bkp from EmployeeRecords 

select * from emprecords_bkp

select distinct * into temp from emprecords_bkp

truncate table emprecords_bkp

select * from emprecords_bkp

insert into emprecords_bkp select * from temp

select * from emprecords_bkp
