--Table: Logs

--+-------------+---------+
--| Column Name | Type    |
--+-------------+---------+
--| id          | int     |
--| num         | varchar |
--+-------------+---------+
--id is the primary key for this table.
--id is an autoincrement column.
 

--Write an SQL query to find all numbers that appear at least three times consecutively.

--Return the result table in any order.

--Solution: 
SELECT DISTINCT
    l1.num as consecutivenums
FROM 
    logs as l1,
    logs as l2,
    logs as l3
WHERE 
    l1.id = l2.id - 1
    AND l2.id = l3.id - 1
    AND l1.num = l2.num
    AND l2.num = l3.num
