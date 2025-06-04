# ClubData Insights: Member & Facility Usage Analysis
This project analyzes data from a fictional sports and fitness club to uncover insights into member behavior, facility utilization, and revenue potential. 

### Project Goals
The goal of this project is to use PostgreSQL and analytical techniques to:
- Track booking trends across different facilities.
- Identify high-value members and their usage patterns.
- Analyze facility profitability and cost-effectiveness.
- Provide actionable recommendations to improve operations and member satisfaction.

### Dataset
The database includes three main tables: **`members`**, **`facilities`**, and **`bookings`**, all within the **`cd`** schema. Here's a breakdown of each table's columns and their meanings:
1. **Members:** Stores information about the club’s members.

| Column Name     | Data Type      | Description                                                                                    |
|:----------------|:---------------|:-----------------------------------------------------------------------------------------------|
| `memid`         | `integer`      | Unique ID for each member (Primary key).                                                       |
| `surname`       | `varchar(200)` | Member's last name.                                                                            |
| `firstname`     | `varchar(200)` | Member's first name.                                                                           |
| `address`       | `varchar(300)` | Member's residential address.                                                                  |
| `zipcode`       | `integer`      | Postal code.                                                                                   |
| `telephone`     | `varchar(20)`  | Member’s phone number.                                                                         |
| `recommendedby` | `integer`      | ID of the member who referred this member (foreign key pointing to `memid` in the same table). |
| `joindate`      | `timestamp`    | Date and time the member joined the club.                                                      |

2. **Facilities:** Contains information about the club’s facilities (e.g., gym, pool).

| Column Name          | Data Type      | Description                                    |
|:---------------------|:---------------|:-----------------------------------------------|
| `facid`              | `integer`      | Unique ID for each facility (Primary key).     |
| `name`               | `varchar(100)` | Name of the facility (e.g., Tennis Court 1).   |
| `membercost`         | `numeric`      | Cost for members to use the facility per slot. |
| `guestcost`          | `numeric`      | Cost for guests (non-members) per slot.        |
| `initialoutlay`      | `numeric`      | Initial cost to set up the facility.           |
| `monthlymaintenance` | `numeric`      | Monthly maintenance cost of the facility.      |

3. **Bookings:** Tracks when members book various facilities.

| Column Name | Data Type   | Description                                                                              |
|:------------|:------------|:-----------------------------------------------------------------------------------------|
| `bookid`    | `integer`   | Unique booking ID (Primary key).                                                         |
| `facid`     | `integer`   | ID of the booked facility (foreign key to `facilities.facid`).                           |
| `memid`     | `integer`   | ID of the member who made the booking (foreign key to `members.memid`).                  |
| `starttime` | `timestamp` | Start time of the booking.                                                               |
| `slots`     | `integer`   | Number of time slots booked (each slot might represent a fixed duration, e.g., 30 mins). |
