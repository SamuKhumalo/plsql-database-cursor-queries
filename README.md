Dean and Diploma Management System (PL/SQL)
This repository contains a PL/SQL script to retrieve and display details about deans, faculties, and their associated diplomas from an Oracle database.

Table of Contents
Overview

Prerequisites

Database Schema

How to Use

Code Explanation

Contributing

License

Overview
This script retrieves dean details from s_staff and s_faculty tables, fetches associated diplomas from s_diploma, and displays the results using DBMS_OUTPUT.

Prerequisites
Oracle Database

Tables: s_staff, s_faculty, s_diploma

Permissions to execute PL/SQL scripts

Database Schema
s_staff
Column	Data Type	Description
staffnr	VARCHAR2	Staff number (primary key)
initials	VARCHAR2	Staff initials
surname	VARCHAR2	Staff surname
s_faculty
Column	Data Type	Description
fac_code	VARCHAR2	Faculty code (primary key)
fac_name	VARCHAR2	Faculty name
fac_head	VARCHAR2	Staff number of the dean
s_diploma
Column	Data Type	Description
dip_code	VARCHAR2	Diploma code (primary key)
dip_name	VARCHAR2	Diploma name
fac_code	VARCHAR2	Faculty code (foreign key)
How to Use
Clone the repository:

bash
Copy
git clone https://github.com/your-username/repository-name.git
cd repository-name
Run the script (dean_diploma_management.sql) in an Oracle SQL environment:

sql
Copy
@dean_diploma_management.sql
View output in DBMS_OUTPUT:

Copy
J. Doe heads the faculty of: FAC001
Having the following diplomas:
DIP001 - Computer Science
DIP002 - Information Technology
Code Explanation
Cursors
dean_cur: Fetches dean details from s_staff and s_faculty.

dip_cur: Fetches diplomas for a specific faculty.

Logic
Fetch dean details using dean_cur.

For each dean, fetch diplomas using dip_cur.

Display results with DBMS_OUTPUT.PUT_LINE.

Contributing
Fork the repository.

Create a branch (git checkout -b feature/your-feature).

Commit changes (git commit -m 'Add some feature').

Push to the branch (git push origin feature/your-feature).

Open a pull request.

License
This project is licensed under the MIT License. See LICENSE for details.

Acknowledgments
Oracle for PL/SQL.

Inspired by faculty management systems.
