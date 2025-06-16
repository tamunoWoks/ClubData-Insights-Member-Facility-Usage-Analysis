#### - Retrieve a list of all members who have recommended another member. There should be no duplicates in the list, and that results are ordered by (surname, firstname):
|firstname|surname |
|:--------|:-------|
|Florence |Bader   |
|Timothy  |Baker   |
|Gerald   |Butters |
|Jemima   |Farrell |
|Matthew  |Genting |
|David    |Jones   |
|Janice   |Joplette|
|Millicent|Purview |
|Tim      |Rownam  |
|Darren   |Smith   |
|Tracy    |Smith   |
|Ponder   |Stibbons|
|Burton   |Tracy   |

---

#### - Retrieve a list of the start times for bookings by 'David Farrell':
|member|starttime|
|:-----|:--------|
|David Farrell|2012-09-18 09:00:00|
|David Farrell|2012-09-18 13:30:00|
|David Farrell|2012-09-18 17:30:00|
|David Farrell|2012-09-18 20:00:00|
|David Farrell|2012-09-19 09:30:00|
|David Farrell|2012-09-19 12:00:00|
|David Farrell|2012-09-19 15:00:00|
|David Farrell|2012-09-20 11:30:00|
|David Farrell|2012-09-20 14:00:00|
|David Farrell|2012-09-20 15:30:00|
|David Farrell|2012-09-21 10:30:00|
|David Farrell|2012-09-21 14:00:00|
|David Farrell|2012-09-22 08:30:00|
|David Farrell|2012-09-22 17:00:00|
|David Farrell|2012-09-23 08:30:00|
|David Farrell|2012-09-23 17:30:00|
|David Farrell|2012-09-23 19:00:00|
|David Farrell|2012-09-24 08:00:00|
|David Farrell|2012-09-24 12:30:00|
|David Farrell|2012-09-24 16:30:00|
|David Farrell|2012-09-25 15:30:00|
|David Farrell|2012-09-25 17:00:00|
|David Farrell|2012-09-26 13:00:00|
|David Farrell|2012-09-26 17:00:00|
|David Farrell|2012-09-27 08:00:00|
|David Farrell|2012-09-28 09:30:00|
|David Farrell|2012-09-28 11:30:00|
|David Farrell|2012-09-28 13:00:00|
|David Farrell|2012-09-29 10:30:00|
|David Farrell|2012-09-29 13:30:00|
|David Farrell|2012-09-29 14:30:00|
|David Farrell|2012-09-29 16:00:00|
|David Farrell|2012-09-29 17:30:00|
|David Farrell|2012-09-30 14:30:00|

---

#### - Retrieve a list of the start times for bookings for tennis courts, for the date '2012-09-21'. The output should be a list of start time and facility name pairings, ordered by the time.
|starttime|name|
|:--------|:---|
|2012-09-21 08:00:00|Tennis Court 1     |
|2012-09-21 08:00:00|Tennis Court 2     |
|2012-09-21 09:30:00|Tennis Court 1     |
|2012-09-21 10:00:00|Tennis Court 2     |
|2012-09-21 11:30:00|Tennis Court 2     |
|2012-09-21 12:00:00|Tennis Court 1     |
|2012-09-21 13:30:00|Tennis Court 1     |
|2012-09-21 14:00:00|Tennis Court 2     |
|2012-09-21 15:30:00|Tennis Court 1     |
|2012-09-21 16:00:00|Tennis Court 2     |
|2012-09-21 17:00:00|Tennis Court 1     |
|2012-09-21 18:00:00|Tennis Court 2     |

----

#### - Retrieve a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30 without subqueries. Remember that guests have different costs to members and the listed costs are per half-hour 'slot':
|member         |facility      |cost|
|:--------------|:-------------|:---|
|GUEST GUEST    |Massage Room 2|320 |
|GUEST GUEST    |Massage Room 1|160 |
|GUEST GUEST    |Massage Room 1|160 |
|GUEST GUEST    |Massage Room 1|160 |
|GUEST GUEST    |Tennis Court 2|150 |
|Jemima Farrell |Massage Room 1|140 |
|GUEST GUEST    |Tennis Court 1|75  |
|GUEST GUEST    |Tennis Court 2|75  |
|GUEST GUEST    |Tennis Court 1|75  |
|Matthew Genting|Massage Room 1|70  |
|Florence Bader |Massage Room 2|70  |
|GUEST GUEST    |Squash Court  |70.0|
|Jemima Farrell |Massage Room 1|70  |
|Ponder Stibbons|Massage Room 1|70  |
|Burton Tracy   |Massage Room 1|70  |
|Jack Smith     |Massage Room 1|70  |
|GUEST GUEST    |Squash Court  |35.0|
|GUEST GUEST    |Squash Court  |35.0|

--- 

#### - Retrieve a list of all members, including the individual who recommended them (if any), without using any joins. Ensure that there are no duplicates in the list, and that each firstname + surname pairing is formatted as a column and ordered:
|member                 |recommender      |
|-----------------------|-----------------|
|Anna Mackenzie         |Darren Smith     |
|Anne Baker             |Ponder Stibbons  |
|Burton Tracy           |NULL             |
|Charles Owen           |Darren Smith     |
|Darren Smith           |NULL             |
|David Farrell          |NULL             |
|David Jones            |Janice Joplette  |
|David Pinker           |Jemima Farrell   |
|Douglas Jones          |David Jones      |
|Erica Crumpet          |Tracy Smith      |
|Florence Bader         |Ponder Stibbons  |
|Gerald Butters         |Darren Smith     |
|GUEST GUEST            |NULL             |
|Henrietta Rumney       |Matthew Genting  |
|Henry Worthington-Smyth|Tracy Smith      |
|Hyacinth Tupperware    |NULL             |
|Jack Smith             |Darren Smith     |
|Janice Joplette        |Darren Smith     |
|Jemima Farrell         |NULL             |
|Joan Coplin            |Timothy Baker    |
|John Hunt              |Millicent Purview|
|Matthew Genting        |Gerald Butters   |
|Millicent Purview      |Tracy Smith      |
|Nancy Dare             |Janice Joplette  |
|Ponder Stibbons        |Burton Tracy     |
|Ramnaresh Sarwin       |Florence Bader   |
|Tim Boothe             |Tim Rownam       |
|Tim Rownam             |NULL             |
|Timothy Baker          |Jemima Farrell   |
|Tracy Smith            |NULL             |

---
