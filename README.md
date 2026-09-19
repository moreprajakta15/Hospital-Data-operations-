# Hospital Management Database

A SQL project that models a simple hospital management system — tracking departments, doctors, patients, appointments, prescriptions, and billing, with an audit trail for billing changes.

## What This Project Does

This database lets you manage the day-to-day data of a hospital:

- Store hospital **departments** (e.g. Cardiology, Neurology, Orthopedics)
- Store **doctors** and which department/specialization they belong to
- Register **patients** with basic demographic details
- Book and track **appointments** between patients and doctors
- Record **prescriptions** issued during appointments
- Handle **billing** for appointments, including payment status
- Automatically **log every billing update** (old amount, new amount, old status, new status, and when it happened) using a trigger

It also includes a set of ready-to-run SQL queries for common hospital operations and reports.

## Tables

| Table | Purpose |
|---|---|
| `Departments` | List of hospital departments |
| `Doctors` | Doctor details, linked to a department |
| `Patients` | Patient details and registration info |
| `Appointments` | Links patients to doctors on a given date, with status |
| `Prescriptions` | Medicines prescribed during an appointment |
| `Billing` | Bill amount and payment status per appointment |
| `audit_log` | Auto-generated record of every change made to `Billing` |

## How the Pieces Connect

```
Departments ─┬─< Doctors
             │
Patients ────┴─< Appointments >──┬─< Prescriptions
                                  └─< Billing ──< audit_log
```

- A **Department** has many **Doctors**.
- A **Patient** and a **Doctor** come together in an **Appointment**.
- Each **Appointment** can have **Prescriptions** and one **Billing** record.
- Every update to **Billing** is captured automatically in **audit_log** via a trigger.

## What Output You Get

Running the queries in this file gives you results like:

- Full lists of doctors, patients, appointments, prescriptions, and bills
- Appointments filtered by a specific date
- Doctors excluding a given specialization (e.g. everyone except cardiologists)
- The second-highest bill amount (using `ORDER BY ... LIMIT 1 OFFSET 1`)
- Distinct values (e.g. unique cities patients come from, unique specializations)
- A live audit history whenever a bill's amount or payment status changes

## How to Use It

1. Open MySQL (Workbench, CLI, or any MySQL-compatible client).
2. Run the script:
   ```sql
   SOURCE hosiptal_file.sql;
   ```
3. This creates the `hospital_db` database, all tables, sample data, and the audit trigger.
4. Run any of the included `SELECT` queries to explore the data.

## Requirements

- MySQL 5.7+ or MariaDB (uses `AUTO_INCREMENT`, `DELIMITER`, and trigger syntax specific to MySQL)

## Possible Next Steps

- Add more sample data for testing
- Build a front-end (web or desktop app) on top of this schema
- Add views for common reports (e.g. daily appointments, unpaid bills)
