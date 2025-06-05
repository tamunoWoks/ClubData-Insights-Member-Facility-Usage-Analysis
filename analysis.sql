-- Retrieve all the information from the facilities table.
SELECT *
FROM cd.facilities;

--- Retrieve a list of only facility names and cost of usage.
SELECT name, membercost, guestcost
FROM cd.facilities;

--- Retrieve a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost?
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/50);
