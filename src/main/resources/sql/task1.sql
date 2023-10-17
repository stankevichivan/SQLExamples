SELECT 
    firstName, lastName, city, state
FROM
    person
        LEFT JOIN
    address ON person.PersonId = address.PersonId;