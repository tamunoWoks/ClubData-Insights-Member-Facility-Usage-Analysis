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


--- Return the name and monthly maintenance of facilities, with each labelled as 'cheap' or 'expensive' if their monthly maintenance costs more than $100:
SELECT name, monthlymaintenance,
    CASE 
        WHEN (monthlymaintenance > 100) THEN 'Expensive'
        ELSE 'Cheap'
    END AS cost
FROM cd.facilities;


--- Return the memid, name and joindate of the members who joined after the start of September 2012:
SELECT memid, (surname ||' '|| firstname) AS member, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';


--- Return an ordered list of the first 10 surnames in the members table without duplicates:
SELECT DISTINCT surname
FROM cd.members
ORDER BY surname 
LIMIT 10;


--- Retrieve a combined list of all surnames and all facility names:
SELECT surname
FROM cd.members
UNION
SELECT name
FROM cd.facilities;


--- Retrieve the signup date of your latest member:
SELECT MAX(joindate) AS latestmember
FROM cd.members;
