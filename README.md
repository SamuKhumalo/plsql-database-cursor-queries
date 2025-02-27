# Dean and Diploma Management System (PL/SQL)

This repository contains a PL/SQL script to retrieve and display details about deans, faculties, and their associated diplomas from an Oracle database.

---

## Table of Contents
1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Database Schema](#database-schema)
4. [How to Use](#how-to-use)
5. [Code Explanation](#code-explanation)
6. [Contributing](#contributing)
7. [License](#license)

---

## Overview

This script retrieves dean details from `s_staff` and `s_faculty` tables, fetches associated diplomas from `s_diploma`, and displays the results using `DBMS_OUTPUT`.

---

## Prerequisites

- **Oracle Database**
- Tables: `s_staff`, `s_faculty`, `s_diploma`
- Permissions to execute PL/SQL scripts

---

## Database Schema

### `s_staff`
| Column     | Data Type     | Description                |
|------------|---------------|----------------------------|
| `staffnr`  | VARCHAR2      | Staff number (primary key) |
| `initials` | VARCHAR2      | Staff initials             |
| `surname`  | VARCHAR2      | Staff surname              |

### `s_faculty`
| Column     | Data Type     | Description                |
|------------|---------------|----------------------------|
| `fac_code` | VARCHAR2      | Faculty code (primary key) |
| `fac_name` | VARCHAR2      | Faculty name               |
| `fac_head` | VARCHAR2      | Staff number of the dean   |

### `s_diploma`
| Column     | Data Type     | Description                |
|------------|---------------|----------------------------|
| `dip_code` | VARCHAR2      | Diploma code (primary key) |
| `dip_name` | VARCHAR2      | Diploma name               |
| `fac_code` | VARCHAR2      | Faculty code (foreign key) |

---

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/repository-name.git
   cd repository-name
