/* Rank scores in the table */

/*s1 and s2 are table aliases used to distinguish the 
outer table from the inner table in correlated 
subqueries or self-joins.*/

SELECT s1.score,
(SELECT COUNT(DISTINCT s2.score)
FROM Scores s2
WHERE s2.score>=s1.score
) AS 'Rank'
FROM Scores s1
ORDER BY s1.score DESC;
