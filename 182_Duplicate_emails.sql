--   Query to find duplicate emails in the Person table 

/* This query uses GROUP BY and HAVING clause to identify
 emails that appear more than once
 */
SELECT email AS Email 
FROM Person
GROUP BY email
HAVING COUNT(email)>1;