-- sql query to find the top 3 salaries in each department

/*
 This query uses a correlated subquery to count the number of distinct salaries
 that are greater than the current employee's salary within the same department.
 if that count is less than 3, it means the current employee's salary
 is among the top 3 salaries in that department.
 */
 
SELECT d.name AS Department,
        e1.name AS Employee,
        e1.salary AS Salary
FROM Employee e1
JOIN Department d on e1.departmentId=d.id
WHERE(
    SELECT COUNT(DISTINCT e2.salary )
    FROM Employee e2
    WHERE e1.departmentId=e2.departmentId
    AND e2.salary>e1.salary
)<3;