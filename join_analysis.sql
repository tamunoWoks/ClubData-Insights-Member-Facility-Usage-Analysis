--- Retrieve a list of the start times for bookings by 'David Farrell':
SELECT 
	(mem.firstname||' '||mem.surname) AS member,
	bks.starttime
FROM cd.members AS mem
JOIN cd.bookings AS bks 
	ON mem.memid = mem.memid
WHERE mem.firstname = 'David' AND mem.surname = 'Farrell';

--- Retrieve a list of the start times for bookings for tennis courts, for the date '2012-09-21'.
--- The output should be a list of start time and facility name pairings, ordered by the time.
SELECT 
	bks.starttime,
	fac.name
FROM cd.bookings AS bks
JOIN cd.facilities AS fac
	ON bks.facid = fac.facid
WHERE fac.name LIKE 'Tennis Court%' AND
	bks.starttime BETWEEN '2012-09-21' AND '2012-09-22'
ORDER BY bks.starttime;
--- This can also be written as:
SELECT bks.starttime, facs.name
FROM cd.facilities AS facs
INNER JOIN cd.bookings bks
	ON facs.facid = bks.facid
WHERE  facs.name IN ('Tennis Court 2','Tennis Court 1') AND
	bks.starttime >= '2012-09-21' AND
	bks.starttime < '2012-09-22'
ORDER BY bks.starttime;          
