/* implemention to find the Nth Highest Salary from the Employee table */

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
 SET N=N-1;
  RETURN  (
    SELECT DISTINCT salary 
    FROM Employee 
    ORDER BY salary DESC
    LIMIT N,1
  );
END