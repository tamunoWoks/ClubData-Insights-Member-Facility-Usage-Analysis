--- Retrieve a list of the start times for bookings by 'David Farrell':
SELECT 
	(m.firstname||' '||m.surname) as member,
	b.starttime
FROM cd.members as m
JOIN cd.bookings as b 
	ON m.memid = b.memid
WHERE m.firstname = 'David' AND m.surname = 'Farrell';
