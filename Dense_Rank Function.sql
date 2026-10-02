create database Student
use student

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);

select * from Students

select *,ROW_NUMBER() over(order by marks desc) as [Row_Number]
from students

--Rank --> if there is a tie next rank/ranks will be skipped
select *,rank() over(order by marks desc) as [Rank_function]
from Students

--Dense_Rank --> if there is a tie next rank/ranks will not be skipped
select *,DENSE_RANK() over(order by marks desc) as [Dense_Rank]
from Students

------------sort in ascending order
select *,ROW_NUMBER() over(order by marks asc) as [Row_Number]
from students

--Rank --> if there is a tie next rank/ranks will be skipped
select *,rank() over(order by marks asc) as [Rank_function]
from Students

--Dense_Rank --> if there is a tie next rank/ranks will not be skipped
select *,DENSE_RANK() over(order by marks asc) as [Dense_Rank]
from Students

--partiton class
select *, ROW_NUMBER() over(partition by subject order by marks desc) as [Row_Number]
from students

select *, ROW_NUMBER() over(partition by subject order by marks asc) as [Row_Number]
from students

select *,rank() over(partition by student_name order by marks desc) as [rank]
from students

select *,rank() over(partition by subject order by marks desc) as [rank]
from students

select *,dense_rank() over(partition by subject order by marks desc) as [dense_rank]
from students

select *,dense_rank() over(partition by subject order by marks asc) as [dense_rank]
from students