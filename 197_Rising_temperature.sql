/*
query to find the ids in which the temperature 
is higher than the previous day.
*/
/* this query uses self-join to compare the temperature
of the current day with the previous day.
{ creating two instance of the same table(weather) -- as {w1 and w2})}.
*/

SELECT  w1.id FROM Weather w1,Weather w2
WHERE w1.temperature>w2.temperature
AND DATEDIFF(w1.recordDate,w2.recordDate)=1;