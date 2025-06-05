-- Retrieve all the information from the facilities table:
SELECT *
FROM cd.facilities;


--- Retrieve a list of only facility names and cost of usage:
SELECT name, membercost, guestcost
FROM cd.facilities;


--- Retrieve a list of only facilities that charge a fee to members:
SELECT name, membercost
FROM cd.facilities
WHERE membercost > 0;


--- Retrieve a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost:
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/50);


--- Retrieve a list of all facilities with the word 'Tennis' in their name:
SELECT *
FROM cd.facilities
WHERE name LIKE '%Tennis%';


--- Retrieve the details of facilities with ID 1 and 5:
SELECT *
FROM cd.facilities
WHERE facid = 1 OR facid = 5;
--- This can also be written as:
SELECT *
FROM cd.facilities
WHERE facid In (1,5);


--- Retrieve a list of facilities, with each labelled as 'cheap' or 'expensive' if their monthly maintenance costs more than $100:
--- Return the name and monthly maintenance of the facilities in question.
SELECT name, monthlymaintenance,
    CASE 
        WHEN (monthlymaintenance > 100) THEN 'Expensive'
        ELSE 'Cheap'
    END AS cost
FROM cd.facilities;
