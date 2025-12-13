/* sql query to combine two tables Person and Address
 using LEFT JOIN to include all persons
 even if they do not have an address
 */

SELECT Person.firstName,Person.lastName,Address.city,Address.state
FROM Person
LEFT JOIN Address ON Person.personId=Address.personId;