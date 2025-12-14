/* 
T184
-his query uses two self-joins to align three consecutive rows
 by their id values, then filters to ensure the num column
  is identical across those rows. Finally, it selects the 
  distinct numbers that appear three times in a row.
 */

 SELECT DISTINCT l1.num AS ConsecutiveNums
FROM  Logs l1
JOIN  Logs l2 ON l1.id + 1=l2.id
JOIN  Logs l3 ON l2.id + 1=l3.id
WHERE l1.num=l2.num AND l2.num=l3.num;

-- Another approach using group by and having clause

 SELECT Num as ConsecutiveNums
  FROM Logs
 GROUP BY Num
 HAVING COUNT(*)>3;