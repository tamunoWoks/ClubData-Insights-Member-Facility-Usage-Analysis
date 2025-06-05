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
1. 3 facilities have the word `Tennis` in their name.
---
