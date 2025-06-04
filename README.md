# ClubData Insights: Member & Facility Usage Analysis
This project analyzes data from a fictional sports and fitness club to uncover insights into member behavior, facility utilization, and revenue potential. 

### Project Goals
The goal of this project is to use PostgreSQL and analytical techniques to:
- Track booking trends across different facilities.
- Identify high-value members and their usage patterns.
- Analyze facility profitability and cost-effectiveness.
- Provide actionable recommendations to improve operations and member satisfaction.

### Dataset
The database includes three main tables: **`members`**, `facilities`, and `bookings`, all within the `cd` schema. Here's a breakdown of each table's columns and their meanings:
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
