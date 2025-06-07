--- Retrieve a list of the start times for bookings by 'David Farrell':
SELECT 
	(mem.firstname||' '||mem.surname) as member,
	bks.starttime
FROM cd.members as mem
JOIN cd.bookings as bks 
	ON mem.memid = mem.memid
WHERE mem.firstname = 'David' AND mem.surname = 'Farrell';
