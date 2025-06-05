#### - All the information from the facilities table.
|facid|name           |membercost|guestcost|initialoutlay|monthlymaintenance|
|:----|:--------------|:---------|:--------|:------------|:-----------------|
|0    |Tennis Court 1 |5         |25       |10000        |200               |
|1    |Tennis Court 2 |5         |25       |8000         |200               |
|2    |Badminton Court|0         |15.5     |4000         |50                |
|3    |Table Tennis   |0         |5        |320          |10                |
|4    |Massage Room 1 |35        |80       |4000         |3000              |
|5    |Massage Room 2 |35        |80       |4000         |3000              |
|6    |Squash Court   |3.5       |17.5     |5000         |80                |
|7    |Snooker Table  |0         |5        |450          |15                |
|8    |Pool Table     |0         |5        |400          |15                |

---

#### - A list of only facility names and cost of usage.
|name           |membercost|guestcost|
|:--------------|:---------|:--------|
|Tennis Court 1 |5         |25       |
|Tennis Court 2 |5         |25       |
|Badminton Court|0         |15.5     |
|Table Tennis   |0         |5        |
|Massage Room 1 |35        |80       |
|Massage Room 2 |35        |80       |
|Squash Court   |3.5       |17.5     |
|Snooker Table  |0         |5        |
|Pool Table     |0         |5        |

**Observation:**  
1. Guests usually pay way more to use each facility than members.
2. Some facilities like the `Badminton Court`,  `Table Tennis`, `Snooker Table`, & `Pool Table`, are absolutely free for members.
---

#### - A list of only facilities that charge a fee to members:
|name          |membercost    |
|:-------------|:-------------|
|Tennis Court 1|5             |
|Tennis Court 2|5             |
|Massage Room 1|35            |
|Massage Room 2|35            |
|Squash Court  |3.5           |

**Observation:**  
1. These 5 out of the 9 facilities require members to pay a fee for usage.
---

#### - A list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost.  
|facid|name          |membercost|monthlymaintenance|
|:----|:-------------|:---------|:-----------------|
|4    |Massage Room 1|35        |3000              |
|5    |Massage Room 2|35        |3000              |

**Observation:**  
1. Only the `Massage Room` facilities cost below 1/50th of the monthly maintenance cost.
---
#### - A list of all facilities with the word 'Tennis' in their name:
|facid|name          |membercost|guestcost|initialoutlay|monthlymaintenance|
|-----|--------------|----------|---------|-------------|------------------|
|0    |Tennis Court 1|5         |25       |10000        |200               |
|1    |Tennis Court 2|5         |25       |8000         |200               |
|3    |Table Tennis  |0         |5        |320          |10                |

**Observation:** 
1. Omly 3 facilities have the word `Tennis` in their name.
---

#### - A list of facilities, with each labelled as 'cheap' or 'expensive' if their monthly maintenance costs more than $100:
|name           |monthlymaintenance|cost     |
|:--------------|:-----------------|:--------|
|Tennis Court 1 |200               |Expensive|
|Tennis Court 2 |200               |Expensive|
|Badminton Court|50                |Cheap    |
|Table Tennis   |10                |Cheap    |
|Massage Room 1 |3000              |Expensive|
|Massage Room 2 |3000              |Expensive|
|Squash Court   |80                |Cheap    |
|Snooker Table  |15                |Cheap    |
|Pool Table     |15                |Cheap    |

**Observation:** 
1. The `Tennis Courts`'s and the `Massage Room`'s are the only expensive facilities with a monthly maintenance cost of above $100.
---

#### - The memid, surname, firstname, and joindate of the members who joined after the start of September 2012:
|memid|surname          |firstname|joindate           |
|-----|-----------------|---------|-------------------|
|24   |Sarwin           |Ramnaresh|2012-09-01 08:44:42|
|26   |Jones            |Douglas  |2012-09-02 18:43:05|
|27   |Rumney           |Henrietta|2012-09-05 08:42:35|
|28   |Farrell          |David    |2012-09-15 08:22:05|
|29   |Worthington-Smyth|Henry    |2012-09-17 12:27:15|
|30   |Purview          |Millicent|2012-09-18 19:04:01|
|33   |Tupperware       |Hyacinth |2012-09-18 19:32:05|
|35   |Hunt             |John     |2012-09-19 11:32:45|
|36   |Crumpet          |Erica    |2012-09-22 08:36:38|
|37   |Smith            |Darren   |2012-09-26 18:08:45|

---
