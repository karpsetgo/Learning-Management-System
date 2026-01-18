# Learning-Management-System
Project Overview

The Learning Management System (LMS) is a database-driven application designed to manage, deliver, and track online learning activities. This system supports the complete lifecycle of learning—from user registration and course creation to enrollment, assessments, progress tracking, and certification.

The project is implemented using Oracle Database with advanced database objects such as tables, views, materialized views, stored procedures, functions, triggers, constraints, and audit logs. Python is used to insert large volumes of randomized test data into the database.

🔹 Objectives

To design and implement a robust relational database using Oracle
To apply database normalization and referential integrity
To demonstrate usage of PL/SQL programming
To automate data population using Python
To generate and document an Entity Relationship Diagram (ERD)
To maintain all database scripts in a GitHub repository

🔹 Key Features

User and role management (students, instructors, admin)
Course categorization and instructor mapping
Student enrollment and progress tracking
Assignment creation, submission, and grading
Performance reporting using views and materialized views
Audit logging using triggers
Secure and consistent data using constraints and indexes

🔹 Database Design Highlights

15–20 relational tables including master and transactional tables
Primary keys and foreign keys to enforce relationships
Check, default, and unique constraints for data validation
Sequences for auto-generating IDs
Indexes to improve query performance
Views and materialized views for reporting and analytics
Stored procedures and functions for business logic
Triggers for auditing and automation
Audit tables to track user actions

🔹 Technologies Used

Database: Oracle Database XE
Language: SQL, PL/SQL
Data Insertion: Python 
Tool: Oracle SQL Developer
Version Control: GitHub
ERD Design: Oracle SQL Developer Data Modeler / draw.io

🔹 Data Population Strategy

Master tables contain 30–50 records
Child tables contain 100+ records
Data is inserted using Python scripts
Dates are randomized to simulate real-world scenarios
Existing data is removed before fresh insertion

🔹 Outcome

This project demonstrates practical knowledge of:
Oracle database architecture
Advanced SQL and PL/SQL concepts
Real-time database design practices
Backend data handling using Python
Professional project structuring using GitHub

🔹 Use Case

The LMS database can be used by educational institutions or training platforms to manage online learning efficiently, ensuring data accuracy, performance, and scalability.
