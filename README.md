# Little Lemon Database Project

This project includes:

- A normalized relational schema for Little Lemon’s business data
- SQL queries for business insights
- Stored procedures and prepared statements
- Version control with Git and GitHub


## Tasks Completed

Part 1: Adding Sales Reports
- ✅ Task 1: Create virtual table to summarize data 
- ✅ Task 2: Join across customers, orders, and menu items
- ✅ Task 3: Subquery to find popular menu items

Part 2: MySQL Query Optimization
- ✅ Task 1: Stored procedure to GetMaxQuantity
- ✅ Task 2: Prepared statement to GetOrderDetail
- ✅ Task 3: Stored procedure to CancelOrder


Table Booking System
Part 1:
- ✅ Task 1: INSERT relevant data into Bookings and StaffInfo tables
- ✅ Task 2: Create stored procedure CheckBooking to check table availability
- ✅ Task 3: Create new procedure AddValidBooking and use transaction statement

Part 2:
- ✅ Task 1: Create procedure AddBooking
- ✅ Task 2: Create procedure UpdateBooking
- ✅ Task 3: Create procedure CancelBooking


Tableau
- ✅ Task 1: Customer bar chart with distinct colors
- ✅ Task 2: Profit line chart
- ✅ Task 3: Customer bubble chart
- ✅ Task 4: Sales bar chart
- ✅ Task 5: Interactive dashboard showing customer sales charts

Python Client
Part 1: Set up client project
- ✅ Task 1: Confirmed Python3 installed on machine
- ✅ Task 2: Pip install Jupyter and run Jupyter from Terminal
- ✅ Task 3: Establish connection between Python and my database
		- Ensure mysql-connector installed
		- Import connector under alias
		- Make connection to database

Part 2: Add query functions
- ✅ Task 1: Connect to database
- ✅ Task 2: SHOW TABLES query
- ✅ Task 3: Query table with JOIN


Note on Schema Differences:
Due to the lack of specific schema requirements in the course materials, I designed a normalized schema based on the data available and the project goals. My schema contains all necessary entities (Orders, Customers, MenuItems, and the relationships between them), even if table names differ. All assigned queries were implemented successfully using this design.

Note on Tableau images:
Tableau images show data filtered to the top 30 customers. Without this filter (and only using the >=$70 filter as suggested in the instructions) there were too many points of data to make the visualizations legible.
