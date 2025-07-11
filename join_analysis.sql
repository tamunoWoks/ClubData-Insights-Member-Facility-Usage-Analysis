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

--- SELF JOIN
--- Retrieve a list of all members who have recommended another member.
--- Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).
SELECT DISTINCT rec.firstname AS firstname, 
	rec.surname AS surname
FROM cd.members mem
JOIN cd.members rec
	ON rec.memid = mem.recommendedby
ORDER BY 2, 1;

--- Retrieve a list of all members, along with their recommender.
--- Ensure that results are ordered by (surname, firstname).
SELECT mem.firstname AS memfname,
	mem.surname AS memsname,
	rec.firstname AS recfname,
	rec.surname AS recsname
FROM cd.members mem
LEFT JOIN cd.members rec
	ON rec.memid = mem.recommendedby
ORDER BY 2, 1;

--- Retrieve a list of all members who have used a tennis court.
--- Output the name of the court, and the name of the member.
--- Ensure no duplicate data, and order by membername & facility name.
SELECT DISTINCT (mem.firstname||' '||mem.surname) AS member,
	fac.name AS facility
FROM cd.members AS mem
JOIN cd.bookings AS bks
	ON mem.memid = bks.memid
JOIN cd.facilities AS fac
	ON bks.facid = fac.facid
WHERE fac.name LIKE 'Tennis Court%'
ORDER BY 1, 2;
--- This can also be written as this:
SELECT DISTINCT mems.firstname || ' ' || mems.surname AS member, facs.name AS facility
FROM cd.members mems
INNER JOIN cd.bookings bks
	ON mems.memid = bks.memid
INNER JOIN cd.facilities facs
	ON bks.facid = facs.facid
WHERE facs.name IN ('Tennis Court 2','Tennis Court 1')
ORDER BY member, facility;     

--- Retrieve a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30:
--- Remember that guests have different costs to members and the listed costs are per half-hour 'slot':
--- Include in your output the name of the facility, the name of the member formatted as a single column, and the cost:
--- Order by descending cost, and do not use any subqueries:
SELECT mems.firstname || ' ' || mems.surname AS member, 
	facs.name AS facility, 
	CASE 
		WHEN mems.memid = 0 THEN
			bks.slots*facs.guestcost
		ELSE
			bks.slots*facs.membercost
	END AS cost
FROM
	cd.members mems                
		JOIN cd.bookings bks
				ON mems.memid = bks.memid
		JOIN cd.facilities facs
				ON bks.facid = facs.facid
WHERE
bks.starttime >= '2012-09-14' AND 
bks.starttime < '2012-09-15' AND (
	(mems.memid = 0 AND bks.slots*facs.guestcost > 30) OR
	(mems.memid != 0 AND bks.slots*facs.membercost > 30)
)
ORDER BY cost DESC;    
--- Now lets's do this using a subquery
SELECT member, facility, cost FROM (
	SELECT 
		mems.firstname || ' ' || mems.surname AS member,
		facs.name AS facility,
		CASE
			WHEN mems.memid = 0 THEN
				bks.slots*facs.guestcost
			ELSE
				bks.slots*facs.membercost
		END AS cost
	FROM
		cd.members mems
		JOIN cd.bookings bks
			ON mems.memid = bks.memid
		JOIN cd.facilities facs
			ON bks.facid = facs.facid
	WHERE
		bks.starttime >= '2012-09-14' AND
		bks.starttime < '2012-09-15'
	) AS bookings
WHERE cost > 30
ORDER BY cost DESC; 

---  Retrieve a list of all members, including the individual who recommended them (if any), without using any joins:
--- Ensure that there are no duplicates in the list, and that each firstname + surname pairing is formatted as a column and ordered:
SELECT DISTINCT firstname||' '||surname AS member,
	(SELECT firstname||' '||surname AS recommender
	 FROM cd.members rec
	 WHERE rec.memid = mem.recommendedby)
FROM cd.members mem
ORDER BY member;
