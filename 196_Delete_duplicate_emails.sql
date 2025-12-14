/* 
Query to delete duplicate emails from the Person table
while keeping one instance of each duplicate email.
*/

/*
 the below query used self join in which
 p1 and p2 are two instances of the Person table.
 */

DELETE p1 FROM Person p1
JOIN Person p2 ON p1.email=p2.email
WHERE p1.id>p2.id;  